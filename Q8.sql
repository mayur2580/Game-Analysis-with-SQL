-- Q8) Find first_login datetime for each device id

select min(start_datetime) as first_login_datetime, dev_Id
from level_details
group by dev_Id
order by first_login_datetime, dev_Id asc ;