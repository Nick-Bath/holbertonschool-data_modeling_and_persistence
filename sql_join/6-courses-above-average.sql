select courses.title
from courses
inner join enrollments
on enrollments.course_id = courses.id
group by courses.id, courses.title
having count(*) > (
    select avg(course_count)
    FROM (
        select count(*) as course_count
        from enrollments
        group by course_id
    )
)
order by courses.title ASC;