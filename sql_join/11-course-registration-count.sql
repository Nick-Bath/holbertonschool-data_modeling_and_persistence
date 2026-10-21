select courses.title, count(registrations.student_id) as students_per_course
from courses
left join registrations
on courses.id = registrations.course_id
group by courses.title
order by students_per_course desc, courses.title asc