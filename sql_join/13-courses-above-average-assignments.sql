select c.title, count(r.course_id)
from courses c
left join registrations r
on c.id = r.course_id
group by c.id, c.title
having count(r.course_id) > (
    select avg(course_count)
    from (
        select count(*) as course_count
        from registrations
        group by registrations.course_id
    )
)
order by c.title;