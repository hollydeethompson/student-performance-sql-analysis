-- Student Performance Analysis
-- Data validation and descriptive statistics
-- Source: UCI Student Performance Dataset

SELECT
  COUNT(*) AS total_students,
  COUNTIF(G3 = 0) AS students_with_zero_grade,
  ROUND(AVG(G3), 2) AS average_final_grade,
  MIN(G3) AS minimum_grade,
  MAX(G3) AS maximum_grade
FROM `project-f98f6b22-dabd-4cd0-96d.student_performance.student_mat`;
