--Spool on
set define on
set termout on
set linesize 100
column SUM(salary) heading "Total Salary" format 999999
column department_id heading "Department Id" 

TTITLE  LEFT '===============Displaying Total employee salary in Department entered=================' SKIP 2

--Spool C:\Users\Neeraj\LDMS\Report_tot_sal.txt

    -- Display employee information
   SELECT SUM(salary),
          department_id
    FROM employees
    WHERE department_id = &department_id
        group by department_id;



CLEAR COLUMNS
set define off
--spool off


