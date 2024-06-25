select
	b.starttime as start,
	f.name
from cd.bookings b
join cd.facilities f on f.facid = b.facid
where f.name ilike '%Tennis court%' and (
	b.starttime >= '2012-09-21' and b.starttime < '2012-09-22'
)
order by b.starttime;
