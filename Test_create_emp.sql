

-- Start anonymous block
BEGIN
    -- Call the create_employee procedure from the package
    employee_pkg.create_employee(
        p_employee_name => 'Test emp',
        p_job_title => 'Developer',
        p_manager_id => 90001,
        p_date_hired => to_date('01/01/98','dd/mm/yy'),
        p_salary => 50000,
        p_department_id => 2
    );
    
    COMMIT;
    
    DBMS_OUTPUT.PUT_LINE('Procedure called successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
        ROLLBACK;
END;
/
