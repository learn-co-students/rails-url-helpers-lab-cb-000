# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Student.destroy_all

def seed_students(student_names)
  student_names.each do |name|
    name_arr = name.split(" ")
    Student.create!(first_name: name_arr.first, last_name: name_arr.last)
  end

  p "Created #{Student.count} Students"
end

names = ["Jughead Jones", "Betty Cooper", "Veronica Lodge", "Archie Andrews", "Cheryl Blossom"]

seed_students(names)
