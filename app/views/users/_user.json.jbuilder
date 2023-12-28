json.id user.id
json.name user.name
json.email user.email
json.created_at user.created_at
json.updated_at user.updated_at


json.students user.students do |student|
  json.id student.id
  json.name student.name
  json.teacher student.teacher
  json.image_url student.image_url
  json.user_id student.user_id

  json.attendances student.attendances do |attendance|
    json.id attendance.id
    json.date attendance.date
    json.presence attendance.presence
  end
end
