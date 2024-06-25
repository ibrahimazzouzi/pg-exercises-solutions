select
	concat(users.firstname, ' ', users.surname),
	facility.name as facility,
	(case when users.memid = 0 then facility.guestcost else facility.membercost end) * booking.slots as cost
from cd.bookings booking
join cd.members users on users.memid = booking.memid
join cd.facilities facility on facility.facid = booking.facid
where booking.starttime >= '2012-09-14' and booking.starttime < '2012-09-15'
and (
	( users.memid = 0 and facility.guestcost * booking.slots > 30 )
	or
	( users.memid <> 0 and facility.membercost * booking.slots > 30 )
)
order by cost desc;
