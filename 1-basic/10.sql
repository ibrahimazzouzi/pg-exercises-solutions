select
	m.surname
from cd.members m
union
select
	f.name
from cd.facilities f;
