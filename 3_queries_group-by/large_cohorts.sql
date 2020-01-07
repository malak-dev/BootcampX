SELECT cohorts.name AS cohort_name, count(students.name) AS student_count
FROM cohorts
  JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name
HAVING count(students.name) >= 18
ORDER BY student_count;