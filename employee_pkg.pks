CREATE OR REPLACE PACKAGE employee_pkg AS

    PROCEDURE create_employee(
        p_employee_name VARCHAR2,
        p_job_title VARCHAR2,
        p_manager_id VARCHAR2,
        p_date_hired DATE,
        p_salary NUMBER,
        p_department_id NUMBER
        );

    PROCEDURE adjust_salary(
             p_employee_id NUMBER,
             p_percentage NUMBER);

    PROCEDURE transfer_employee(
            p_employee_id NUMBER,
            p_new_department_id NUMBER
            );

   FUNCTION get_employee_salary(p_employee_id NUMBER) RETURN NUMBER;

END employee_pkg;
/
