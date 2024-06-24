select
	m.firstname,
	m.surname,
	m.joindate
from cd.members m
where m.joindate = ( select max(m.joindate) from cd.members m );
