CREATE TABLE Departments (Department_Id Number(5) generated always as identity,
    Department_Name Varchar2(50) Not null,
    Location Varchar2(50) not null,
    constraint department_pk primary key (Department_Id));


CREATE TABLE Employees (Employee_Id Number(10) generated always as identity,
    Employee_Name Varchar2(50) Not null,
    Job_Title Varchar2(50) not null,
    Manager_Id Number(10),
    Date_Hired Date Not null ,
    Salary Number(10) Not null,
    Department_Id Number(5) Not null,
    constraint employees_pk primary key (Employee_Id),
    Constraint fk_dept_id FOREIGN KEY (Department_Id) 
    references Departments(Department_Id) );


INSERT INTO Departments(Department_Name,Location) VALUES ('Management','London');
INSERT INTO Departments(Department_Name,Location) VALUES ('Engineering','Cardiff');
INSERT INTO Departments(Department_Name,Location) VALUES ('Research & Development ','Edinburgh');
INSERT INTO Departments(Department_Name,Location) VALUES ('Sales ','Belfast');

INSERT INTO Employees(Employee_Name,Job_Title,Date_Hired,Salary,Department_Id) VALUES ('John Smith','CEO',TO_DATE('01/01/95','dd/mm/yy'),100000,1);
INSERT INTO Employees(Employee_Name,Job_Title,Manager_Id,Date_Hired,Salary,Department_Id) VALUES ('Jimmy Willis','Manager',90001,TO_DATE('23/09/03','dd/mm/rr'),52500,4);
INSERT INTO Employees(Employee_Name,Job_Title,Manager_Id,Date_Hired,Salary,Department_Id) VALUES ('Roxy Jones','Salesperson',90002,TO_DATE('11/02/17','dd/mm/yy'),35000,4);
INSERT INTO Employees(Employee_Name,Job_Title,Manager_Id,Date_Hired,Salary,Department_Id) VALUES ('Selwyn Field','Salesperson',90003,TO_DATE('20/05/15','dd/mm/yy'),32000,4);
INSERT INTO Employees(Employee_Name,Job_Title,Manager_Id,Date_Hired,Salary,Department_Id) VALUES ('David Hallett','Engineer',90006,TO_DATE('17/04/18','dd/mm/yy'),40000,2);
INSERT INTO Employees(Employee_Name,Job_Title,Manager_Id,Date_Hired,Salary,Department_Id) VALUES ('Sarah Phelps','Manager',90001,TO_DATE('21/03/15','dd/mm/yy'),45000,2);
INSERT INTO Employees(Employee_Name,Job_Title,Manager_Id,Date_Hired,Salary,Department_Id) VALUES ('Louise Harper','Engineer',90006,TO_DATE('01/01/13','dd/mm/yy'),47000,2);
INSERT INTO Employees(Employee_Name,Job_Title,Manager_Id,Date_Hired,Salary,Department_Id) VALUES ('Tina Hart','Engineer',90009,TO_DATE('28/07/14','dd/mm/yy'),45000,3);
INSERT INTO Employees(Employee_Name,Job_Title,Manager_Id,Date_Hired,Salary,Department_Id) VALUES ('Gus Jones','Manager',90001,TO_DATE('15/05/18','dd/mm/yy'),50000,3);
INSERT INTO Employees(Employee_Name,Job_Title,Manager_Id,Date_Hired,Salary,Department_Id) VALUES ('Mildred Hall','Secretary',90001,TO_DATE('12/10/96','dd/mm/yy'),35000,1);


