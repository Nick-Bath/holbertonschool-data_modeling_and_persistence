select students.name
from students
where student.id in (
    select enrollments.student_id
    from enrollments
)
order by student.name ASC;