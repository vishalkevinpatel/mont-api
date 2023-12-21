json.id student.id
json.name student.name
json.teacher student.teacher
json.image_url student.image_url
json.user_id  student.user_id
json.created_at student.created_at
json.updated_at student.updated_at

json.attendances student.attendances do |attendance|
  json.id attendance.id
  json.date attendance.date
  json.presence attendance.presence
end