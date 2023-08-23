-- Start anonymous block
BEGIN
    -- Call the create_employee procedure from the package
    employee_pkg.adjust_salary(
        p_employee_id => '90001',
        p_percentage => 10
        );
    
    COMMIT;    

    DBMS_OUTPUT.PUT_LINE('salary adjusted - test passed');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
        ROLLBACK;
END;
/
