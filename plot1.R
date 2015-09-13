#######################################################################################
#                                                                                     #
# Author: Anderson Hitoshi Uyekita                                                    #
# Exploratory Data Analysis                                                           #
# Course Project 01 - Week 1 - Coursera                                               #
# File: plot1.R                                                                       #
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
# Subseting the Raw Data
# "raw_dataset$Date %in% c("1/2/2007","2/2/2007")" used to select data between 1/2/2007 and 2/2/2007
subset_dataset <- raw_dataset[raw_dataset$Date %in% c("1/2/2007","2/2/2007") ,]$Global_active_power

# Removing raw_data
rm(raw_dataset)

################################## 6. Plotting ########################################
png("plot1.png", width = 480 , height = 480,units = "px", bg = "white")
hist(subset_dataset, col="red", main="Global Active Power", xlab="Global Active Power (kW)")
dev.off()

################## 7. Recovering Original Configuration ###############################
unlink("household_power_consumption.txt")
rm(subset_dataset)
setwd(root_original)
rm(root_original)