CREATE OR REPLACE PACKAGE BODY employee_pkg AS

 -- Allow an employee to be created
PROCEDURE create_employee(
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

    -- Update Salary of an employee
PROCEDURE adjust_salary(
    p_employee_id NUMBER,
    p_percentage NUMBER
) AS
    v_old_salary NUMBER;
    v_new_salary NUMBER;
BEGIN
    -- Get the current salary
    SELECT salary INTO v_old_salary FROM employees WHERE employee_id = p_employee_id;

    -- Calculate the new salary
    v_new_salary := v_old_salary * (1 + p_percentage / 100);

    -- Update the salary in the employees table
    UPDATE employees SET salary = v_new_salary WHERE employee_id = p_employee_id;

    COMMIT; -- Commit the transaction to make the changes permanent

    DBMS_OUTPUT.PUT_LINE('Salary adjusted successfully.');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');
    WHEN OTHERS THEN
        ROLLBACK; -- Rollback the transaction in case of an error
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END adjust_salary;

--Transfer employee from one dept to other
PROCEDURE transfer_employee(
    p_employee_id NUMBER,
    p_new_department_id NUMBER
) AS
BEGIN
    -- Update the department_id for the specified employee
    UPDATE employees
    SET department_id = p_new_department_id
    WHERE employee_id = p_employee_id;

    COMMIT; -- Commit the transaction to make the changes permanent

    DBMS_OUTPUT.PUT_LINE('Employee transferred successfully.');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');
    WHEN OTHERS THEN
        ROLLBACK; -- Rollback the transaction in case of an error
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END transfer_employee;

--Return salary of an employee
FUNCTION get_employee_salary(p_employee_id NUMBER)
RETURN NUMBER
IS
    v_salary NUMBER;
BEGIN
    -- Retrieve the salary of the specified employee
    SELECT salary INTO v_salary
    FROM Employees
    WHERE employee_id = p_employee_id;

    RETURN v_salary;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL; -- Return NULL if employee is not found
    WHEN OTHERS THEN
        RETURN NULL; -- Return NULL in case of an error
END get_employee_salary;

END employee_pkg;
/
