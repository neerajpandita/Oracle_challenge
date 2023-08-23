--Spool on
set define on
set termout on
set linesize 200
set numwidth 20
column Employee_id  heading "Employee|Id" Format 999999
column Employee_Name  heading "Employee Name" 
column Job_Title heading "Job Title " Format a15 
column Manager_Id heading "Manager|Id" 
column Salary heading Salary Format 999999
column Date_hired heading  "Date|Hired"  

ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MM-YY';

TTITLE  LEFT '===============Displaying Employee details in Department entered=================' SKIP 2

--Spool C:\Users\Neeraj\LDMS\Report_Emp.txt

    -- Display employee information
    SELECT employee_id, 
           employee_name,
           Job_Title, Manager_Id, Date_Hired, Salary
      FROM employees
      WHERE department_id = &department_id
      ORDER BY employee_id;



CLEAR COLUMNS
set define off
--spool off


