SELECT assignments.id, assignments.name, assignments.day, assignments.chapter, count(*) as total_requests
FROM assistance_requests
  JOIN assignments ON assignments.id = assignment_id
GROUP by assignments.id
ORDER by total_requests desc;