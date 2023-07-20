# Load libraries
library(data.table)
library(dplyr)
library(ggplot2)

# Read data
cec_data <- read.csv('Clean Energy Corps.csv', stringsAsFactors = FALSE)

# Data Cleaning
# Remove unwanted columns
cec_data <- select(cec_data, -c(X, ZIP_CODE))

# Rename columns
colnames(cec_data) <- c('datetime', 'kW', 'solar', 'wind', 'geo_lat', 'geo_long')

# Change datetime to date
cec_data$datetime <- as.Date(cec_data$datetime, format = '%Y-%m-%d %H:%M:%S')

# Create new variable for month
cec_data$month <- month(cec_data$datetime, label = TRUE)

# Calculate mean of kW for each month
cec_data_mean <- cec_data %>%
  group_by(month) %>%
  summarise(kw_mean = mean(kW))

# Plot mean of kW per month
ggplot(cec_data_mean, aes(x=month, y=kw_mean)) + 
  geom_col(fill="steelblue", color="red2") +
  labs(title="Mean kW Production Per Month")

# Calculate renewable energy production
cec_data$renewable <- (cec_data$solar + cec_data$wind)*(cec_data$kW/1000)

# Create a choropleth of renewable energy production
library(maps)
library(RColorBrewer)

# Create a list of color palletes
pal <- brewer.pal(9, "Blues")

# Plot data
map('state', fill=TRUE, col=pal)
points(cec_data$geo_long, cec_data$geo_lat, pch=19, col="red", cex=0.2)

# Calculate average kW per state
cec_data_mean2 <- cec_data %>%
  group_by(state) %>%
  summarise(kw_mean = mean(kW))

# Plot average kW produced by state
ggplot(cec_data_mean2, aes(x=state, y=kw_mean)) + 
  geom_col(fill="steelblue", color="red2") +
  labs(title="Average kW Production by State")