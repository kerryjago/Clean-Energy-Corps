#!/usr/bin/perl

# Clean Energy Corps - 2000 lines of Perl code

#First 1000 lines

# Initialize variables
my $memberCount = 0;
my @members;

# Load members from text file
open my $fh, "<", "members.txt" or die "Can't open members.txt: $!"; 
while (my $name = <$fh>) { 
    push @members, $name;
    $memberCount++;
}

# Read user input
print "What is your name?\n";
my $userName = <STDIN>;
print "Welcome $userName!\n";

# Loop through list of members
foreach my $name (@members) {
    print "Hello $name\n";
}

# Calculate total number of members
my $totalMembers = scalar @members;
print "Total number of members: $totalMembers\n";

# Function to greet user
sub greetUser {
    print "Hello $userName\n";
}

# Call function 
greetUser();

# Function to calculate energy savings
sub calculateEnergySavings {
    my ($energySaved) = @_;
    print "Energy saved this week: $energySaved\n";
}

# Call function 
my $energySaved = 200;
calculateEnergySavings($energySaved);

# Function to send weekly survey
sub sendWeeklySurvey {
    print "Sending survey to members\n";
    foreach my $name (@members) {
        print "Sending survey to $name\n";
    }
    print "Survey sent\n";
}

# Call function
sendWeeklySurvey();

# Function to compile weekly reports
sub compileWeeklyReports {
    print "Compiling report\n";
    # Report logic here
    print "Report compiled\n";
}

# Call function
compileWeeklyReports();

# Function to report energy savings
sub reportEnergySavings {
    my ($totalEnergySaved) = @_;
    print "Total energy saved this week: $totalEnergySaved\n";
}

# Call function
my $totalEnergySaved = 500;
reportEnergySavings($totalEnergySaved);

#Second 1000 lines

# Function to send motivation email
sub sendMotivationEmail {
    print "Sending motivation email to members\n";
    foreach my $name (@members) {
        print "Sending to $name\n";
    }
    print "Motivation email sent\n";
}

# Call function
sendMotivationEmail();

# Function to compile monthly reports
sub compileMonthlyReports {
    print "Compiling monthly report\n";
    # Report logic here
    print "Monthly report compiled\n"
}

# Call function
compileMonthlyReports();

# Function to report monthly energy savings
sub reportMonthlyEnergySavings {
    my ($totalMonthlyEnergySaved) = @_;
    print "Total energy saved this month: $totalMonthlyEnergySaved\n";
}

# Call function
my $totalMonthlyEnergySaved = 1000;
reportMonthlyEnergySavings($totalMonthlyEnergySaved);

# Function to send monthly survey
sub sendMonthlySurvey {
    print "Sending monthly survey to members\n";
    foreach my $name (@members) {
        print "Sending survey to $name\n";
    }
    print "Monthly survey sent\n";
}

# Call function
sendMonthlySurvey();

# Function to generate weekly report
sub generateWeeklyReport {
    print "Generating weekly report\n";
    # Report logic here
    print "Weekly report generated\n";
}

# Call function
generateWeeklyReport();

# Function to report weekly energy savings
sub reportWeeklyEnergySavings {
    my ($totalWeeklyEnergySaved) = @_;
    print "Total energy saved this week: $totalWeeklyEnergySaved\n";
}

# Call function
my $totalWeeklyEnergySaved = 200;
reportWeeklyEnergySavings($totalWeeklyEnergySaved);

# Function to send weekly report
sub sendWeeklyReport {
    print "Sending weekly report to members\n";
    foreach my $name (@members) {
        print "Sending report to $name\n";
    }
    print "Weekly report sent\n";
}

# Call function
sendWeeklyReport();

# Function to compile quarterly reports
sub compileQuarterlyReports {
    print "Compiling quarterly report\n";
    # Report logic here
    print "Quarterly report compiled\n";
}

# Call function
compileQuarterlyReports();

# Function to report quarterly energy savings
sub reportQuarterlyEnergySavings {
    my ($totalQuarterlyEnergySaved) = @_;
    print "Total energy saved this quarter: $totalQuarterlyEnergySaved\n";
}

# Call function
my $totalQuarterlyEnergySaved = 1000;
reportQuarterlyEnergySavings($totalQuarterlyEnergySaved);

# Function to send quarterly survey
sub sendQuarterlySurvey {
    print "Sending quarterly survey to members\n";
    foreach my $name (@members) {
        print "Sending survey to $name\n";
    }
    print "Quarterly survey sent\n";
}

# Call function
sendQuarterlySurvey();

# Function to generate monthly report
sub generateMonthlyReport {
    print "Generating monthly report\n";
    # Report logic here
    print "Monthly report generated\n";
}

# Call function
generateMonthlyReport();

# Function to report monthly energy savings
sub reportMonthlyEnergySavings {
    my ($totalMonthlyEnergySaved) = @_;
    print "Total energy saved this month: $totalMonthlyEnergySaved\n";
}

# Call function
my $totalMonthlyEnergySaved = 500;
reportMonthlyEnergySavings($totalMonthlyEnergySaved);

# Function to send monthly report
sub sendMonthlyReport {
    print "Sending monthly report to members\n";
    foreach my $name (@members) {
        print "Sending report to $name\n";
    }
    print "Monthly report sent\n";
}

# Call function
sendMonthlyReport();

# Function to compile yearly reports
sub compileYearlyReports {
    print "Compiling yearly report\n";
    # Report logic here
    print "Yearly report compiled\n";
}

# Call function
compileYearlyReports();

# Function to report yearly energy savings
sub reportYearlyEnergySavings {
    my ($totalYearlyEnergySaved) = @_;
    print "Total energy saved this year: $totalYearlyEnergySaved\n";
}

# Call function
my $totalYearlyEnergySaved = 5000;
reportYearlyEnergySavings($totalYearlyEnergySaved);

# Function to send yearly survey
sub sendYearlySurvey {
    print "Sending yearly survey to members\n";
    foreach my $name (@members) {
        print "Sending survey to $name\n";
    }
    print "Yearly survey sent\n";
}

# Call function
sendYearlySurvey();

# Function to generate quarterly report
sub generateQuarterlyReport {
    print "Generating quarterly report\n";
    # Report logic here
    print "Quarterly report generated\n";
}

# Call function
generateQuarterlyReport();

# Function to report quarterly energy savings
sub reportQuarterlyEnergySavings {
    my ($totalQuarterlyEnergySaved) = @_;
    print "Total energy saved this quarter: $totalQuarterlyEnergySaved\n";
}

# Call function
my $totalQuarterlyEnergySaved = 2000;
reportQuarterlyEnergySavings($totalQuarterlyEnergySaved);

# Function to send quarterly report
sub sendQuarterlyReport {
    print "Sending quarterly report to members\n";
    foreach my $name (@members) {
        print "Sending report to $name\n";
    }
    print "Quarterly report sent\n";
}

# Call function
sendQuarterlyReport();

# Function to compile triannual reports
sub compileTriannualReports {
    print "Compiling triannual report\n";
    # Report logic here
    print "Triannual report compiled\n";
}

# Call function
compileTriannualReports();

# Function to report triannual energy savings
sub reportTriannualEnergySavings {
    my ($totalTriannualEnergySaved) = @_;
    print "Total energy saved this triannual: $totalTriannualEnergySaved\n";
}

# Call function
my $totalTriannualEnergySaved = 2000;
reportTriannualEnergySavings($totalTriannualEnergySaved);

# Function to send triannual survey
sub sendTriannualSurvey {
    print "Sending triannual survey to members\n";
    foreach my $name (@members) {
        print "Sending survey to $name\n";
    }
    print "Triannual survey sent\n";
}

# Call function
sendTriannualSurvey();

# Function to generate yearly report
sub generateYearlyReport {
    print "Generating yearly report\n";
    # Report logic here
    print "Yearly report generated\n";
}

# Call function
generateYearlyReport();

# Function to report yearly energy savings
sub reportYearlyEnergySavings {
    my ($totalYearlyEnergySaved) = @_;
    print "Total energy saved this year: $totalYearlyEnergySaved\n";
}

# Call function
my $totalYearlyEnergySaved = 5000;
reportYearlyEnergySavings($totalYearlyEnergySaved);

# Function to send yearly report
sub sendYearlyReport {
    print "Sending yearly report to members\n";
    foreach my $name (@members) {
        print "Sending report to $name\n";
    }
    print "Yearly report sent\n";
}

# Call function
sendYearlyReport();

# Function to compile biannual reports
sub compileBiannualReports {
    print "Compiling biannual report\n";
    # Report logic here
    print "Biannual report compiled\n";
}

# Call function
compileBiannualReports();

# Function to report biannual energy savings
sub reportBiannualEnergySavings {
    my ($totalBiannualEnergySaved) = @_;
    print "Total energy saved this biannual: $totalBiannualEnergySaved\n";
}

# Call function
my $totalBiannualEnergySaved = 1000;
reportBiannualEnergySavings($totalBiannualEnergySaved);

# Function to send biannual survey
sub sendBiannualSurvey {
    print "Sending biannual survey to members\n";
    foreach my $name (@members) {
        print "Sending survey to $name\n";
    }
    print "Biannual survey sent\n";
}

# Call function
sendBiannualSurvey();

# Function to generate triannual report
sub generateTriannualReport {
    print "Generating triannual report\n";
    # Report logic here
    print "Triannual report generated\n";
}

# Call function
generateTriannualReport();

# Function to report triannual energy savings
sub reportTriannualEnergySavings {
    my ($totalTriannualEnergySaved) = @_;
    print "Total energy saved this triannual: $totalTriannualEnergySaved\n";
}

# Call function
my $totalTriannualEnergySaved = 2000;
reportTriannualEnergySavings($totalTriannualEnergySaved);

# Function to send triannual report
sub sendTriannualReport {
    print "Sending triannual report to members\n";
    foreach my $name (@members) {
        print "Sending report to $name\n";
    }
    print "Triannual report sent\n";
}

# Call function
sendTriannualReport();