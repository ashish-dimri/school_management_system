# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Initialize first account:
admin = User.create! do |u|
    u.name      = 'Test Admin'
    u.email     = 'admin@admin.com'
    u.password    = 'admin123'
end

school1 = School.create! do |s|
    s.name = "Test School 1"
    s.description = "Test School 1 Description"
end

school2 = School.create! do |s|
    s.name = "Test School 2"
    s.description = "Test School 2 Description"
end


school_admin = school1.school_admins.create! do |sa|
    sa.name      = 'Test School Admin'
    sa.email     = 'school_admin@admin.com'
    sa.password    = 'school_admin123'
end

course1 = school1.courses.create! do |c|
    c.name = "Maths"
    c.description = "Maths"
end

course2 = school1.courses.create! do |c|
    c.name = "Science"
    c.description = "Science"
end

course3 = school1.courses.create! do |c|
    c.name = "Computer"
    c.description = "Computer"
end
