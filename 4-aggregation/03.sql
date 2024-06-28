select recommendedby, count(*)
from cd.members m
where recommendedby is not null
group by m.recommendedby
order by m.recommendedby;
