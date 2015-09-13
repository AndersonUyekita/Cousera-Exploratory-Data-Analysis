# Codebook

## Requirements

1. `httr` package installed;
2. `png` package installed;
3. Internet access to download the data.

### Description of functionality of `plot1.R`

1. The script will save your original work directory;
2. Set the Documents Folder as origin;
3. Create the folder `Dataset_Power_Consumption` to keep all files create inside;
3. Access the internet using the `httr` package to download the raw data;
4. If the raw data is already downloaded the script will not download any file;
5. Unzipping the file into the `Dataset_Power_Consumption` folder;
6. Read the raw data using `read.table()`;
7. Subsetting the raw data between 1/2/2007 and 2/2/2007;
8. Plot the histogram of `Global_active_power`;
9. Saving the plot as `png` file;
10. Excluding all variable and turn back the original work directory.

### Description of functionality of `plot2.R`

1. The script will save your original work directory;
2. Set the Documents Folder as origin;
3. Create the folder `Dataset_Power_Consumption` to keep all files create inside;
3. Access the internet using the `httr` package to download the raw data;
4. If the raw data is already downloaded the script will not download any file;
5. Unzipping the file into the `Dataset_Power_Consumption` folder;
6. Read the raw data using `read.table()`;
7. Subsetting the raw data between 1/2/2007 and 2/2/2007;
8. Converting Date and Time to Date/Time class with `strptime()`;
9. Plot the line graphic of `Global_active_power` by `1/2/2007 and 2/2/2007`;
10. Saving the plot as `png` file;
11. Excluding all variable and turn back the original work directory.

### Description of functionality of `plot3.R`

1. The script will save your original work directory;
2. Set the Documents Folder as origin;
3. Create the folder `Dataset_Power_Consumption` to keep all files create inside;
3. Access the internet using the `httr` package to download the raw data;
4. If the raw data is already downloaded the script will not download any file;
5. Unzipping the file into the `Dataset_Power_Consumption` folder;
6. Read the raw data using `read.table()`;
7. Subsetting the raw data between 1/2/2007 and 2/2/2007;
8. Converting Date and Time to Date/Time class with `strptime()`;
9. Plot the line graphic of `Sub_metering_1` by `1/2/2007 and 2/2/2007`;
10. Add to the graphic above the `Sub_metering_2` and `Sub_metering_3`;
11. Insert a legend;
12. Saving the plot as `png` file;
13. Excluding all variable and turn back the original work directory.

### Description of functionality of `plot4.R`

1. The script will save your original work directory;
2. Set the Documents Folder as origin;
3. Create the folder `Dataset_Power_Consumption` to keep all files create inside;
3. Access the internet using the `httr` package to download the raw data;
4. If the raw data is already downloaded the script will not download any file;
5. Unzipping the file into the `Dataset_Power_Consumption` folder;
6. Read the raw data using `read.table()`;
7. Subsetting the raw data between 1/2/2007 and 2/2/2007;
8. Converting Date and Time to Date/Time class with `strptime()`;
9. Set the global graphic configuration as two-by-two (`par(mfrow = c(2, 2))`);
10. Plot the line graphic of `Global_active_power` by `1/2/2007 and 2/2/2007` at the top left;
11. Plot the line graphic of `Voltage` by `1/2/2007 and 2/2/2007` at the top right;
12. Plot the line graphic of `Sub_metering_1` by `1/2/2007 and 2/2/2007` and  `Sub_metering_2` and `Sub_metering_3` at bottom left;
13. Plot the line graphic of `Global_reactive_power` by `1/2/2007 and 2/2/2007` at the bottom right;
14. Saving the plot as `png` file;
15. Excluding all variable and turn back the original work directory.

## Content of Output and Input

Here will be described some aspects of output and inputs.

### Input

##### Raw Data

* Length 20640916 bytes (19.7 MB);
* Tabulation: `;`
* 2,075,259 rows;
* `na.string` used to turn `?` into `NA`
* 9 columns.

##### Subset Data

* 2,880 rows;
* 9 columns.

### Output

* Four `.R` files to be evaluated in peer assessment;
* Four `png` files to be evaluated in peer assessment.
