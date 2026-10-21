select students.name
from students
inner join registrations
on students.id = registrations.student_id
group by students.name
order by students.name
