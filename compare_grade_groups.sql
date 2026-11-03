-- Compare students with zero and nonzero final grades
-- Dataset: UCI Student Performance (Mathematics)

SELECT
  CASE
    WHEN G3 = 0 THEN 'Final Grade = 0'
    ELSE 'Final Grade > 0'
  END AS grade_group,
  COUNT(*) AS number_of_students,
  ROUND(AVG(G1), 2) AS average_G1,
  ROUND(AVG(G2), 2) AS average_G2,
  ROUND(AVG(G3), 2) AS average_G3
FROM `project-f98f6b22-dabd-4cd0-96d.student_performance.student_mat`
GROUP BY grade_group
ORDER BY grade_group;
