select
courses.title,
instructors.name
from
courses
inner join
instructors
    on courses.instructor_id = instructors.id
group by courses.title
order by courses.title