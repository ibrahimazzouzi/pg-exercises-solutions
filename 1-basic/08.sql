select
	m.memid,
	m.surname,
	m.firstname,
	m.joindate
from cd.members m
where m.joindate > '2012-09-01';
