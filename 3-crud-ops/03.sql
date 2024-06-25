insert into cd.facilities
	( facid, name, membercost, guestcost, initialoutlay, monthlymaintenance )
values
	(
	  (select
		facid + 1 as nextid
	  from cd.facilities
	  order by facid desc
	  limit 1),
	  'Spa', 20, 30, 100000, 800
	);
