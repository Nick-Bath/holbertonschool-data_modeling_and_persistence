select courses.title, students.name
from courses
left join enrollments
    on enrollments.course_id = courses.id
left join students
    on enrollments.student_id = students.id
group by courses.title, students.name