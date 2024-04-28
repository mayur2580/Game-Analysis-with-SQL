-- Q10) Find the device ID that is first logged in(based on start_datetime) or each player(p_id).
-- Output should contain player id, device id and first login datetime.


select min(start_datetime) as first_login_datetime, dev_Id, p_id
from level_details
group by dev_Id, p_id
order by first_login_datetime, p_id asc ;