# Exploratory-Data-Analysis---Plotting-Part-2-
This repository contains my completed **EDA Project - Part 2**, analyzing **PM2.5** emissions in the U.S. from 1999–2008 using R and the ****[EPA NEI dataset](https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip).

---

## 🧭 Project Overview

**Fine particulate matter (PM2.5)** is one of the most harmful ambient air pollutants affecting human health.

The **EPA’s National Emissions Inventory (NEI)** provides data every three years on the total tons of PM2.5 emitted across the United States by various source types (point, nonpoint, on-road, and non-road).

This project answers six analytical questions about how PM2.5 emissions have evolved between **1999 and 2008**, both nationwide and for specific regions (Baltimore and Los Angeles).

---

## 🧾 Data Dictionary

| Variable | Description |
| --- | --- |
| **fips** | A five-digit string indicating the U.S. county. |
| **SCC** | The Source Classification Code identifying the type of emission source. |
| **Pollutant** | The pollutant name (in this dataset: always `PM25-PRI`). |
| **Emissions** | The total amount of PM2.5 emitted (in tons). |
| **type** | The emission source type — one of `POINT`, `NONPOINT`, `ON-ROAD`, or `NON-ROAD`. |
| **year** | The year of emissions recorded (1999, 2002, 2005, or 2008). |

## 📊 Analysis Questions and Plots

### **Plot 1 — Total U.S. Emissions**

**Question:** Have total PM2.5 emissions decreased in the United States from 1999 to 2008?

**Code:** [plot1.R](https://github.com/Karyapos/Exploratory_Data_Analysis_Plotting_Part2/blob/main/plot1.R)

**Output:**[plot1.png](https://github.com/Karyapos/Exploratory_Data_Analysis_Plotting_Part2/blob/main/plot1.png)

---

### **Plot 2 — Baltimore City Emissions**

**Question:** Have total PM2.5 emissions decreased in Baltimore City, Maryland (`fips == "24510"`) from 1999 to 2008?

**Code:** [plot2.R](https://github.com/Karyapos/Exploratory_Data_Analysis_Plotting_Part2/blob/main/plot2.R)

**Output:**[plot2.png](https://github.com/Karyapos/Exploratory_Data_Analysis_Plotting_Part2/blob/main/plot2.png)

---

### **Plot 3 — Emissions by Source Type in Baltimore**

**Question:** Which emission source types (point, nonpoint, onroad, nonroad) have increased or decreased in Baltimore City between 1999 and 2008?

**Code:** [plot3.R](https://github.com/Karyapos/Exploratory_Data_Analysis_Plotting_Part2/blob/main/plot3.R)

**Output:**[plot3.png](https://github.com/Karyapos/Exploratory_Data_Analysis_Plotting_Part2/blob/main/plot3.png)

---

### **Plot 4 — Coal Combustion-Related Emissions**

**Question:** How have PM2.5 emissions from coal combustion-related sources changed across the United States from 1999 to 2008?

**Code:** [plot4.R](https://github.com/Karyapos/Exploratory_Data_Analysis_Plotting_Part2/blob/main/plot4.R)

**Output:**[plot4.png](https://github.com/Karyapos/Exploratory_Data_Analysis_Plotting_Part2/blob/main/plot4.png)

---

### **Plot 5 — Motor Vehicle Emissions in Baltimore**

**Question:** How have PM2.5 emissions from motor vehicle sources changed from 1999 to 2008 in Baltimore City?

**Code:** [plot5.R](https://github.com/Karyapos/Exploratory_Data_Analysis_Plotting_Part2/blob/main/plot5.R)

**Output:**[plot5.png](https://github.com/Karyapos/Exploratory_Data_Analysis_Plotting_Part2/blob/main/plot5.png)

---

### **Plot 6 — Baltimore vs. Los Angeles Vehicle Emissions**

**Question:** How do trends in motor vehicle emissions compare between Baltimore City (`fips == "24510"`) and Los Angeles County (`fips == "06037"`) from 1999 to 2008?

**Code:** [plot6.R](https://github.com/Karyapos/Exploratory_Data_Analysis_Plotting_Part2/blob/main/plot6.R)

**Output:**[plot6.png](https://github.com/Karyapos/Exploratory_Data_Analysis_Plotting_Part2/blob/main/plot6.png)

## 🧰 Tools and Technologies

- **Language:** R
- **Packages:**
    - `ggplot2`
    - `dplyr`
    - `data.table` (optional for faster manipulation)
- **Data Files:**
    - ***summarySCC_PM25.rds*** — PM2.5 emission data (1999–2008)
    - ***Source_Classification_Code.rds*** — Source classification codes

---
