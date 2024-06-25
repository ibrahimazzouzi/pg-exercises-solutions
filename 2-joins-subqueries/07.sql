select distinct
	concat(m1.firstname, ' ', m1.surname) as member,
	(
		select concat(m2.firstname, ' ', m2.surname)
		from cd.members m2
		where m1.recommendedby = m2.memid ) as recommender
from cd.members m1
order by member;
