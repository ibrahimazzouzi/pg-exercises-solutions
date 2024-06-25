select
  b.starttime
from cd.bookings b
join cd.members m on b.memid = m.memid
where m.firstname = 'David' and m.surname = 'Farrell';
