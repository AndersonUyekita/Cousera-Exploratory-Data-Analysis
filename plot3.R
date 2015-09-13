#######################################################################################
#                                                                                     #
# Author: Anderson Hitoshi Uyekita                                                    #
# Exploratory Data Analysis                                                           #
# Course Project 01 - Week 1 - Coursera                                               #
# File: plot3.R                                                                       #
#                                                                                     #
#######################################################################################

############################### 1. Work Directory #####################################
# Saving the original work directory
root_original <- getwd()

# All manipulation data will start in the root.
setwd("~")

################################ 2. Work Directory ####################################
# Create a project directory
if(!file.exists("Dataset_Power_Consumption"))
        {
        dir.create("Dataset_Power_Consumption")
        }

# Set as Work Directory
setwd("Dataset_Power_Consumption")

################################ 3. Download Data #####################################
library(httr) 
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
if(!file.exists("power_consumption.zip"))
        {
        download.file(url, "power_consumption.zip")
        }

# Removing the URL
rm(url)

# Unzipping the power_consumption file
if(!file.exists("household_power_consumption.txt"))
        {
        file_unzipped <- unzip("power_consumption.zip", list = FALSE, overwrite = TRUE)
        }

file_unzipped <- "./household_power_consumption.txt"

################################ 4. Loading the data ##################################
raw_dataset <- read.table(file_unzipped, header = T, sep=';', stringsAsFactors=FALSE , na.strings = "?", nrows=2075259, check.names=F)
rm(file_unzipped)

################################# 5. Subsetting data ##################################
# "raw_dataset$Date %in% c("1/2/2007","2/2/2007")" used to select data between 1/2/2007 and 2/2/2007
subset_dataset <- raw_dataset[raw_dataset$Date %in% c("1/2/2007","2/2/2007"),]

############################## 6. Data Manipulation ###################################
# Convert the Date and Time variables to Date/Time classes
data_time <- strptime(paste(subset_dataset$Date, " " ,subset_dataset$Time), "%d/%m/%Y %H:%M:%S", tz ="GMT")

# Removing raw_data
rm(raw_dataset)

################################## 7. Plotting ########################################
png("plot3.png", width = 480, height = 480 , units = "px", bg = "white")
plot(data_time, subset_dataset$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(data_time, subset_dataset$Sub_metering_2, type="l", col="red")
lines(data_time, subset_dataset$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()

################## 8. Recovering Original Configuration ###############################
unlink("household_power_consumption.txt")
rm(subset_dataset)
rm(data_time)
setwd(root_original)
rm(root_original)
