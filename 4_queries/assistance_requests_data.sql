SELECT students.name AS student , teachers.name AS teacher , assignments.name AS assignment , ((assistance_requests.completed_at) - (assistance_requests.started_at))AS duration
FROM assistance_requests
  JOIN teachers ON teachers.id = teacher_id
  JOIN assignments ON assignments.id = assignment_id
  JOIN students ON students.id = student_id
ORDER BY duration ;
