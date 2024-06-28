select name, revenue from (
	select
	  f.name,
	  sum(b.slots * ( case when b.memid = 0 then f.guestcost else f.membercost end )) as revenue
	from cd.facilities f
	join cd.bookings b
	on b.facid = f.facid
	group by f.facid
) as t where revenue < 1000
order by revenue;
