json.id attendance.id
json.student attendance.student, partial: "students/student", as: :student
json.teacher attendance.teacher&.name
json.date attendance.date
json.presence attendance.presence
json.created_at attendance.created_at
json.updated_at attendance.updated_at

