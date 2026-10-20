select students.name
from students
where students.id in (
    select enrollments.student_id
    from enrollments
)
order by student.name ASC;