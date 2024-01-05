json.id user.id
json.name user.name
json.email user.email
json.created_at user.created_at
json.updated_at user.updated_at


json.students user.students do |student|
  json.id student.id
  json.name student.name
  json.teacher student.teacher&.name
  json.image_url student.image_url
  json.user_id student.user_id
end
json.messages user.messages do |message|
  json.id message.id
  json.text message.text
  json.teacher message.teacher&.name
  json.parent message.user&.name
  json.student message.student&.name
end
