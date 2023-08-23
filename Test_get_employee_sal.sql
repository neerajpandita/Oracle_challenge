DECLARE
    v_salary NUMBER;
BEGIN
    v_salary := employee_pkg.get_employee_salary(90001); 
    DBMS_OUTPUT.PUT_LINE('Employee salary: ' || v_salary);
END;
/
