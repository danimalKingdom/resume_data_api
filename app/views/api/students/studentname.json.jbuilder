json.array! @students do |student|
  
  json.id student.id
  json.name student.first_name + " " +student.last_name

end