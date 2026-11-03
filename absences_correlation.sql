-- Student Performance Analysis
-- Calculate the correlation between absences
-- and final mathematics grades (G3)
-- Source: UCI Student Performance Dataset

SELECT
  ROUND(CORR(absences, G3), 3) AS correlation
FROM `project-f98f6b22-dabd-4cd0-96d.student_performance.student_mat`;
