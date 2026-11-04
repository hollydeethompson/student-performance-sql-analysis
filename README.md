Student Performance Analysis Using SQL

Project Overview

This project uses Google BigQuery and SQL to analyze mathematics performance data from 395 students.

The goal was to investigate relationships between weekly study time, school absences, and final mathematics grades while demonstrating SQL skills in data validation, statistical analysis, and data segmentation.

This project builds on my earlier Google Sheets analysis by reproducing and validating the findings using SQL.

Tools and Skills

Tools: Google BigQuery, SQL, GitHub

SQL Skills Demonstrated:

Data retrieval using SELECT and FROM

Aggregation using COUNT(), AVG(), MIN(), and MAX()

Grouping and sorting using GROUP BY and ORDER BY

Filtering records using WHERE

Conditional logic using CASE WHEN and COUNTIF()

Statistical analysis using CORR()

Formatting numerical results using ROUND()

Research Questions

How does weekly study time relate to final mathematics grades?

Is there a linear relationship between school absences and final grades?

How do students with final grades of zero compare with other students?

What can descriptive statistics reveal about student performance?

Key Findings

1. Study Time and Final Grades

| Weekly Study Time | Students | Average Final Grade |
|---|---:|---:|
| 2 hours or less | 105 | 10.05 |
| 2–5 hours | 198 | 10.17 |
| 5–10 hours | 65 | 11.40 |
| More than 10 hours | 27 | 11.26 |

Students reporting 5–10 hours of weekly study time had the highest average final mathematics grade.

2. Absences and Final Grades

The Pearson correlation coefficient between absences and final grades was 0.034, indicating almost no linear relationship in this dataset.

3. Zero Final Grade Investigation

Of the 395 students, 38 (approximately 9.6%) received a final mathematics grade of zero.

| Measure | Final Grade = 0 | Final Grade > 0 |
|---|---:|---:|
| Number of students | 38 | 357 |
| Average G1 | 7.53 | 11.27 |
| Average G2 | 4.66 | 11.36 |
| Average G3 | 0.00 | 11.52 |

Students with final grades of zero had substantially lower earlier-period grades.

All 38 students with final grades of zero also had zero recorded absences. The dataset does not explain why these students received a zero.

SQL Files

data_validation.sql — Validates record counts and summarizes final grades.

study_time_analysis.sql — Compares average grades across study-time categories.

absences_correlation.sql — Calculates the correlation between absences and final grades.

compare_grade_groups.sql — Compares earlier grades for students with zero and nonzero final grades.

Data Limitations

The dataset does not establish causal relationships. In particular, it does not explain the circumstances behind the 38 zero final grades.

All 395 records were retained in the analysis because there was insufficient evidence to justify excluding the zero grades.

Data Source

UCI Machine Learning Repository — Student Performance Dataset

https://archive.ics.uci.edu/dataset/320/student+performance

Related Project

[Student Performance Analysis Using Google Sheets](https://github.com/hollydeethompson/Student-Performance-Analysis)


This project demonstrates my ability to use SQL to validate data, calculate descriptive statistics, compare groups, and investigate unusual patterns.

By reproducing my earlier Google Sheets findings in BigQuery, I gained practical experience using multiple analytical tools to answer research questions.
