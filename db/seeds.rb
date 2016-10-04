# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Create one Teacher
Teacher.create(name: "Grace Hopper", user_name: "GH1234")

# Create two courses for this teacher
teacher = Teacher.first
2.times do |i|
  Course.create(name: "Course #{ i }", teacher_id: teacher.id )
end

course = Course.first

# Create the students
grades = %w(8 9 10 11 12)
24.times do |i|
  student_hash = { first_name: "Ada #{ i }", last_name: "Lovelace #{ i }", reference_id: rand(12345..99999), grade: grades.sample, course_id: course.id}
  Student.create(student_hash)
end

# Create assignments for the first course
5.times do |i|
  Assignment.create(name: "Assess #{ i }", course_id: course.id)
end

# Create marks for a bunch of students
first_assign = Assignment.first
grades = %w(A B C D)
24.times do |i|
  Mark.create(assignment_id: first_assign.id, student_id: Student.find(i + 1).id, grade: grades.sample)
end
