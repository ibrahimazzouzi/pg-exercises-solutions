select (
  extract(epoch from timestamp '2012-09-02 00:00:00')
  - extract(epoch from timestamp '2012-08-31 01:00:00')
)::int as date_part;
