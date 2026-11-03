-- Student Performance Analysis
-- Analyze average final math grades by weekly study time
-- Source: UCI Student Performance Dataset

SELECT
  studytime,
  COUNT(*) AS number_of_students,
  ROUND(AVG(G3), 2) AS average_final_grade
FROM `project-f98f6b22-dabd-4cd0-96d.student_performance.student_mat`
GROUP BY studytime
ORDER BY studytime;
