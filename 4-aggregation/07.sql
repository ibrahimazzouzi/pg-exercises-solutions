select count(*) from (
	select memid
	from cd.bookings
	group by memid
) as t;
