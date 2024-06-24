select
	f.name,
	(case when f.monthlymaintenance > 100 then 'expensive' else 'cheap' end) as cost
from cd.facilities f;
