select courses.title
from courses
left join registrations
on courses.id = registrations.course_id
group by courses.id, courses.title
having count(*) > (
    select avg(course_count)
    from (
        select count(*) as course_count
        from registrations
        group by course_id
    )
)
order by courses.title;