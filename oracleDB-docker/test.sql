-- Example 1: Employee Management Table
CREATE TABLE employees (
    employee_id     NUMBER(10) PRIMARY KEY,
    first_name      VARCHAR2(50) NOT NULL,
    last_name       VARCHAR2(50) NOT NULL,
    email           VARCHAR2(100) UNIQUE NOT NULL,
    phone_number    VARCHAR2(20),
    hire_date       DATE DEFAULT SYSDATE,
    job_title       VARCHAR2(100),
    department_id   NUMBER(10),
    salary          NUMBER(10,2) CHECK (salary > 0),
    manager_id      NUMBER(10),
    is_active       CHAR(1) DEFAULT 'Y' CHECK (is_active IN ('Y', 'N')),
    created_date    TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_date    TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create sequence for employee_id
CREATE SEQUENCE emp_seq START WITH 1 INCREMENT BY 1;

-- Create trigger for auto-incrementing employee_id
CREATE OR REPLACE TRIGGER trg_emp_id
    BEFORE INSERT ON employees
    FOR EACH ROW
BEGIN
    IF :NEW.employee_id IS NULL THEN
        :NEW.employee_id := emp_seq.NEXTVAL;
    END IF;
END;