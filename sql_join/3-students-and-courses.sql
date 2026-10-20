select students.name, courses.title
from enrollments
inner join students
    on enrollments.student_id = students.id
inner join courses
    on enrollments.course_id = courses.id
group by students.name, courses.title;