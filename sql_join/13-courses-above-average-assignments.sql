select c.title
from courses c
inner join assignments a
on a.course_id = c.id
group by c.title, a.course_id
having count(*) > (
    select avg(assignment_count)
    from (
        select count(*) as assignment_count
        from assignments
        group by course_id
    )
)
order by c.title