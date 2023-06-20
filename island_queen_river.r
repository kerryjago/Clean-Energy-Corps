#Load Libraries
library(data.table)
library(dplyr)
library(ggplot2)
library(lubridate)

#Read in Data 
energy_data <- fread("energy_data.csv")

#Clean Data --Check for Missing Values 
na_cols <- sapply(energy_data, function(x) sum(is.na(x)))
energy_data <- energy_data[, na_cols == 0]

#Clean Data --Check for Outliers
num_cols <- sapply(energy_data, is.numeric)
energy_data[,num_cols] <- lapply(energy_data[, num_cols],
                               function(x) scale(x))

#Create Pivot Table
energy_pivot <- dcast(energy_data, 
                      region ~ energy_source, value.var = "kwh")

#Create Plot
ggplot(data = energy_pivot) +
  geom_line(aes(x=region, y= coal, color="Coal")) +
  geom_line(aes(x=region, y= oil, color="Oil"))+
  geom_line(aes(x=region, y= renewable, color="Renewable"))+
  theme_bw()+
  ggtitle("Energy Use in Regions") +
  xlab("Region") +
  ylab("KWH")+
  scale_color_manual(name="Energy Source", values=c("Coal"="red","Oil"="black","Renewable"="green"))

#Group Data 
group_energy <- group_by(energy_data, region)

#Create Summary Statistics
summary_region <- summarise(group_energy, 
                            coal_min = min(coal, na.rm = TRUE), 
                            coal_max = max(coal, na.rm = TRUE), 
                            coal_mean = mean(coal, na.rm = TRUE))

#Write Summary Statistics to File
write.csv(summary_region, "summary_region.csv")

#Write Report
report <- readLines("energy_overview.txt")
report_title <- c("Clean Energy Corps",
                  "Energy Use Overview")

out_file <- file("clean_energy_overview.txt")
writeLines(report_title, out_file)

for(region in unique(energy_data$region)){
  region_summary <- filter(summary_region, 
                           region == region)
  region_text <- paste(region, 
                       "uses between",
                       region_summary$coal_min,
                       "and",
                       region_summary$coal_max,
                       "KWH Coal per year with a mean of",
                       region_summary$coal_mean,
                       "KWH.")
  writeLines(region_text, out_file)
}

writeLines(report, out_file)
close(out_file)