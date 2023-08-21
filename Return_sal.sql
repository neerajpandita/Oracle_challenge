--Return salary of an employee
CREATE OR REPLACE FUNCTION get_employee_salary(p_employee_id NUMBER)
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
/
