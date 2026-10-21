select c.title
from courses c
inner join registrations r
on c.id = r.course_id
group by c.id, c.title
having count(*) > (
        select count(*) * 1.0 / (select count(*) from courses)
        from registrations
)
order by c.title;