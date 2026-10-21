select courses.title, assignments.title
from courses
left join assignments
on courses.id = assignments.course_id
order by courses.title, assignments.title