select f.facid, f.name, f.membercost, f.monthlymaintenance
from cd.facilities f
where f.membercost <> 0 and f.membercost < f.monthlymaintenance / 50;
