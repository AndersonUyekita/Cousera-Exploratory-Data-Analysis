`Course Project 1` Exploratory Data Analysis
================

-   👨🏻‍💻 Author: Anderson H Uyekita
-   📚 Specialization: <a
    href="https://www.coursera.org/specializations/data-science-foundations-r"
    target="_blank" rel="noopener">Data Science: Foundations using R
    Specialization</a>
-   📖 Course:
    <a href="https://www.coursera.org/learn/exploratory-data-analysis"
    target="_blank" rel="noopener">Exploratory Data Analysis</a>
    -   🧑‍🏫 Instructor: Roger D Peng
-   📆 Week 1
    -   🚦 Start: 2022/05/24
    -   🏁 Finish: 2022/05/25
-   <a
    href="https://github.com/AndersonUyekita/exploratory-data-analysis_course-project-1/blob/master/instructions.md"
    target="_blank" rel="noopener">📋 Project Instructions</a>
-   🌎 Rpubs: [Interactive
    Document](https://rpubs.com/AndersonUyekita/course-project-1_exploratory-data-analysis)
-   [📄 README](./README.md)

------------------------------------------------------------------------

## Instructions

This assignment uses data from the [UC Irvine Machine Learning Repository](http://archive.ics.uci.edu/ml/index.php), a popular repository for machine learning datasets. In particular, we will be using the “Individual household electric power consumption Data Set” which I have made available on the course web site:

* **Dataset:** [Electric power consumption](https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip) [20Mb]
* **Description:** Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.

The following descriptions of the 9 variables in the dataset are taken from the [UCI web site](https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption):

* **Date:** Date in format dd/mm/yyyy
* **Time:** time in format hh:mm:ss
* **Global_active_power:** household global minute-averaged active power (in kilowatt)
* **Global_reactive_power:** household global minute-averaged reactive power (in kilowatt)
* **Voltage:** minute-averaged voltage (in volt)
* **Global_intensity:** household global minute-averaged current intensity (in ampere)
* **Sub_metering_1:** energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
* **Sub_metering_2:** energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
* **Sub_metering_3:** energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

## Review criteria

#### Criteria

1. Was a valid GitHub URL containing a git repository submitted?
2. Does the GitHub repository contain at least one commit beyond the original fork?
3. Please examine the plot files in the GitHub repository. Do the plot files appear to be of the correct graphics file format?
4. Does each plot appear correct?
5. Does each set of R code appear to create the reference plot?

#### Reviewing the Assignments

Keep in mind this course is about exploratory graphs, understanding the data, and developing strategies. Here's a good quote from a swirl lesson about exploratory graphs: *"They help us find patterns in data and understand its properties. They suggest modeling strategies and help to debug analyses. We DON'T use exploratory graphs to communicate results."*

The rubrics should always be interpreted in that context.

As you do your evaluation, please keep an open mind and focus on the positive. The goal is not to deduct points over small deviations from the requirements or for legitimate differences in implementation styles, etc. Look for ways to give points when it's clear that the submitter has given a good faith effort to do the project, and when it's likely that they've succeeded. Most importantly, it's okay if a person did something differently from the way that you did it. The point is not to see if someone managed to match your way of doing things, but to see if someone objectively accomplished the task at hand.

To that end, keep the following things in mind:

**DO:**

* Review the source code.
* Keep an open mind and focus on the positive.
* When in doubt, err on the side of giving too many points, rather than giving too few.
* Ask yourself if a plot might answer a question for the person who created it.
* Remember that not everyone has the same statistical background and knowledge.

**DON'T:**

* Deduct just because you disagree with someone's statistical methods.
* Deduct just because you disagree with someone's plotting methods.
* Deduct based on aesthetics.


## Loading the data

When loading the dataset into R, please consider the following:

* The dataset has 2,075,259 rows and 9 columns. First calculate a rough estimate of how much memory the dataset will require in memory before reading into R. Make sure your computer has enough memory (most modern computers should be fine).

* We will only be using data from the dates 2007-02-01 and 2007-02-02. One alternative is to read the data from just those dates rather than reading in the entire dataset and subsetting to those dates.

* You may find it useful to convert the Date and Time variables to Date/Time classes in R using the `strptime()` and `as.Date()` functions.

* Note that in this dataset missing values are coded as `?`.

## Making Plots

Our overall goal here is simply to examine how household energy usage varies over a 2-day period in February, 2007. Your task is to reconstruct the following plots below, all of which were constructed using the base plotting system.

First you will need to fork and clone the following GitHub repository: [https://github.com/rdpeng/ExData_Plotting1](https://github.com/rdpeng/ExData_Plotting1)

For each plot you should

* Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.

* Name each of the plot files as `plot1.png`, `plot2.png`, etc.

* Create a separate R code file `plot1.R`, `plot2.R`, etc.) that constructs the corresponding plot, i.e. code in `plot1.R` constructs the `plot1.png` plot. Your code file **should include code for reading the data** so that the plot can be fully reproduced. You must also include the code that creates the PNG file.

*Add the PNG file and R code file to the top-level folder of your git repository (no need for separate sub-folders)

When you are finished with the assignment, push your git repository to GitHub so that the GitHub version of your repository is up to date. There should be four PNG files and four R code files, a total of eight files in the top-level folder of the repo.

The four plots that you will need to construct are shown below.

Plot 1

![](./figure/unnamed-chunk-2.png) 

Plot 2

![](./figure/unnamed-chunk-3.png) 

Plot 3

![](./figure/unnamed-chunk-4.png) 

Plot 4

![](./figure/unnamed-chunk-5.png) 

