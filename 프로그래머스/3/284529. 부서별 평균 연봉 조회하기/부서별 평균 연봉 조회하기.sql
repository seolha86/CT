select hd.dept_id
    , dept_name_en
    , round(avg(sal), 0) as "AVG_SAL"
from hr_department hd
join hr_employees he
on hd.dept_id = he.dept_id
group by 1
order by 3 desc