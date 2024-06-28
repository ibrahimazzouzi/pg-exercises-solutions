select facid, sum(slots) as "Total Slots"
from cd.bookings
where starttime >= '09-01-2012' and starttime < '10-01-2012'
group by facid
order by "Total Slots";
