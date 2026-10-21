select instructors.name, courses.title
from instructors
left join courses
on courses.instructor_id = instructors.id
order by instructors.name