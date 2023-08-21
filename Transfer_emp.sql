--Transfer employee from one dept to other
CREATE OR REPLACE PROCEDURE transfer_employee(
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
/
