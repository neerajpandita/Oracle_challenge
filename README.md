# Oracle_challenge
Challenge Question 1 and 2 - have been covered in file DDL_emp.sql
Challenge Questions 3,4,5,6 have been covered as stored procs and function packaged together in package employee_pkg.
Challenge Question 7 - has been covered in Show_employees.sql file.
Challenge Question 8 -  has been covered in Tot_emp_sal.sql file.

Test Scripts -  
Test script for challenge 3 - Test_create_emp.sql
Test script for challenge 4 - Test_adjust_sal.sql
Test script for challenge 5 - Test_transfer_emp.sql
Test script for challenge 6 - Test_get_employee_sal.sql
Above scripts have employee and department passed for tests

Build Instructions - 
The file Build.sql contains all the code compilation commands in correct sequence. Please run the file to build code.
In sql plus prompt, run the build file which will create all required objects in database using below :
 
 @your git repo path\Build.sql ( Example -  @C:\Users\Neeraj\oracle_challenge\Oracle_challenge\Build.sql)
You can verify the creation of tables and data load in tables once this step completes successfully.The build step in itself tests Challenge Questions 1 and 2. 

 Run Instructions - 
 To run and test follow steps as below from sqlplus :
 Test script for challenge 3 - Pass the required parameters to procedure employee_pkg.create_employee . Update file Test_create_emp.sql with relevant parameters .
 E.g  @C:\Users\Neeraj\oracle_challenge\Oracle_challenge\Test_create_emp.sql
 Test script for challenge 4 - Pass the required parameters to procedure employee_pkg.adjust_sal in file Test_adjust_sal.sql and run the file.  
 Test script for challenge 5 - Pass the required parameters to procedure employee_pkg.transfer_employee , Update file Test_transfer_emp.sql and run.
 Test script for challenge 6 - Pass the required parameters to procedure employee_pkg.get_employee_salary,update file Test_get_employee_sal.sql and run.
 Test script for challenge 7 - Run file Show_employee.sql  and Pass the department number when sqlplus prompt asks for it. Additionally spool code can be uncommented for file to be spooled.
 Test script for challenge 8 - Run file Tot_emp_sal.sql and Pass the department number when sqlplus prompt asks for it.Additionally spool code can be uncommented for file to be spooled. 

 Alternately , you may update all test scripts first and update Run.sql to match your directories and run the Run.sql script :
 e.g @C:\Users\Neeraj\oracle_challenge\Oracle_challenge\Run.sql 


 Steps to Git clone into your local for Windows - 
 Git clone 
 
