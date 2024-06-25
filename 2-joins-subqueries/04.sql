select
	u.firstname as memfname,
	u.surname as memsname,
	rec.firstname as recfname,
	rec.surname as recsname
from cd.members u
left join cd.members rec
on rec.memid = u.recommendedby
order by u.surname, u.firstname;
