select starttime, starttime + interval '30 minutes' * slots as endtime
from cd.bookings
order by endtime desc, starttime desc
limit 10;
