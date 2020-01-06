SELECT name , id, phone
FROM students
WHERE github IS NULL
  AND end_date IS NOT NULL;