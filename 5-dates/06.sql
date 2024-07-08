select
	date_part('month', months.month),
	( (months.month + '1 month'::interval) - ( months.month ) ) as length
from (
	select *
	from generate_series('2012-01-01'::timestamp, '2012-12-01'::timestamp, '1 month')
	as month
) as months
order by months.month
