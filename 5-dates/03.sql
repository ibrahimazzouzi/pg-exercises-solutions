select *
from generate_series(
	'2012-10-01 00:00'::timestamp,
	'2012-10-31 00:00'::timestamp,
	'24 hours'::interval
)
