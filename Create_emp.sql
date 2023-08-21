-- Allow an employee to be created
CREATE OR REPLACE PROCEDURE create_employee(
    p_employee_name VARCHAR2,
    p_job_title VARCHAR2,
    p_manager_id VARCHAR2,
    p_date_hired DATE,
    p_salary NUMBER,
    p_department_id NUMBER
) AS
BEGIN
    INSERT INTO employees (employee_name,job_title,manager_id, date_hired, salary,department_id)
    VALUES (p_employee_name, p_job_title, p_manager_id, p_date_hired, p_salary,p_department_id);
    
    COMMIT; 
    
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK; -- Rollback the transaction in case of an error
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END create_employee;
/
