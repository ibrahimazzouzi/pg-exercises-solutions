select distinct
	concat(member.firstname, ' ', member.surname) as member,
	facility.name as facility
from cd.members member
join cd.bookings booking on booking.memid = member.memid
join cd.facilities facility on facility.facid = booking.facid
where facility.name ilike '%tennis court%'
order by member, facility.name;
