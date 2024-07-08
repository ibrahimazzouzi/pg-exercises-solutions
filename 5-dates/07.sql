select (
	date_trunc('month', ( '2012-02-11 01:00:00'::date + interval '1 month' ))
	-
	'2012-02-11 01:00:00'::date
) as remaining;
