# 📊 HR Employee Attrition Analysis
    SQL + Power BI Project

# Dashboard Preview

<img width="848" height="479" alt="DASHBOARD" src="https://github.com/user-attachments/assets/360235f7-2606-4ee5-9afb-a98a2364dfb5" />


## 🔎 Project Overview

This project analyzes employee attrition trends using SQL for data preparation and Power BI for interactive dashboarding.

The objective was to identify key drivers of employee exits and uncover actionable workforce insights using structured data modeling and KPI-driven reporting.

## 🗂 Dataset

Source: HR Employee Attrition Dataset (CSV)

Records: ~1,400+ employees

Data Type: Structured HR data

Key Attributes:
Demographics (Age, Gender, Marital Status)
Job Details (Department, Job Role, Promotion, Overtime)
Work Factors (Distance from Home, Years at Company)
Attrition Indicator

## 🛠 Tools & Technologies
MySQL
Data cleaning
Data validation
View creation
KPI calculation logic
Power BI
Data modeling
DAX measures
Interactive dashboard
Visual analytics

## 🧹 Data Preparation (SQL Workflow)

The dataset was processed in MySQL before importing into Power BI.
### ✔ Database Setup

Created database
Imported CSV using Import Data Wizard
Verified row count

### ✔ Data Cleaning

Dropped irrelevant columns:
EmployeeCount
EmployeeNumber
Over18
Renamed inconsistent column names (e.g., corrected Age column formatting)

Checked for:
Duplicates
Null values
Data type inconsistencies

### ✔ Data Validation

Verified schema using DESCRIBE

Ensured correct data types for numeric and categorical fields

### ✔ View Creation

Created SQL view: employee_view
Used for structured KPI and attrition-based calculations

## 📈 KPI Metrics Created

The following metrics were built using SQL logic and DAX measures:
Total Employees
Exited Employees
Remaining Employees
Attrition Rate (%)
Average Attrition Age

Attrition breakdowns were calculated by:
Gender
Department
Job Role
Marital Status
Distance from Home
Promotion
Overtime

## 📊 Dashboard Overview
### 🎛 Slicers (5)

Job Role
Department
Marital Status
Gender
Overtime

### 📌 KPI Cards (5)

Total Employees
Exited Employees
Remaining Employees
Attrition Rate
Average Attrition Age

### 📊 Visualizations

Pie Chart → Attrition Rate by Department
Donut Chart → Attrition by Gender
Clustered Column Chart → Attrition by Job Role
Clustered Column Chart → Attrition by Marital Status
Clustered Bar Chart → Attrition by Age
Area Line Chart → Attrition Count by Distance from Home

## 📱 Mobile View

* Designed a dedicated mobile layout in Power BI
* Optimized visuals for vertical scrolling format
* Prioritized KPI cards for quick decision-making
* Ensured readability for smaller screens

The dashboard is fully accessible on Power BI mobile layout for on-the-go monitoring.

## 📌 Key Insights

Attrition is higher in specific departments and job roles.

Employees working overtime show a noticeably higher exit rate.

Certain age groups show stronger attrition patterns.

Distance from home appears to influence employee retention.

Marital status and gender show measurable variation in attrition trends.

## 💡 Business Impact

This dashboard helps HR teams:

Identify high-risk employee segments

Understand workforce turnover patterns

Improve retention strategies

Support data-driven HR decision-making

### 📂 Repository Structure
 ├── HR_Employee_Attrition.csv
 ├── HR_Attrition_Dashboard.pbix
 ├── SQL_Scripts.sql

 └── README.md

