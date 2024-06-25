select
	concat(joined.firstname, ' ', joined.surname),
	joined.name as facility,
	joined.cost
from (
	select
		*,
		(case when users.memid = 0 then facility.guestcost else facility.membercost end) * booking.slots as cost
	from cd.bookings booking
	join cd.members users on users.memid = booking.memid
	join cd.facilities facility on facility.facid = booking.facid
	where booking.starttime >= '2012-09-14' and booking.starttime < '2012-09-15'
) as joined
where cost > 30
order by cost desc;
