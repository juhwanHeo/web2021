select 
	count(*) as all_cnt,
	count(case when cido like '%남양주시%' or road_address like '%남양주시%' or num_address like '%남양주시%' then 1 end) as local_cnt
from 
	station;