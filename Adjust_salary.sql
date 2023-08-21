-- Update Salary of an employee
CREATE OR REPLACE PROCEDURE adjust_salary(
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
/
