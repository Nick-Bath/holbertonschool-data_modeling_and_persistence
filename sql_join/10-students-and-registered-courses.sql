select students.name, courses.title
from registrations
inner join courses
on courses.id = registrations.course_id
inner join students
on students.id = registrations.student_id
order by students.name, courses.title