select courses.title, count(enrollments.student_id) as enrollment_count
from courses
left join enrollments
    on enrollments.student_id = courses.id
group by courses.title
order by enrollment_count desc, courses.title asc;