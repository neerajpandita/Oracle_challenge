-- Start anonymous block
BEGIN
    -- Call the create_employee procedure from the package
    employee_pkg.transfer_employee(
        p_employee_id => '90001',
        p_new_department_id => 4
        );
    
    COMMIT;    

    DBMS_OUTPUT.PUT_LINE('Employee transfered - Test passed');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
        ROLLBACK;
END;
/
