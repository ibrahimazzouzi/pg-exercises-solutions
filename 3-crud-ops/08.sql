delete from cd.members
where memid not in (
	select distinct memid from cd.bookings
);
