select i.name
from instructors i
inner join courses c
on c.instructor_id = i.id
inner join registrations r
on c.id = r.course_id
group by i.id, i.name
order by i.name

