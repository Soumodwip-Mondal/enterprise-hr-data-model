-- ==============================
-- DATABASE CREATION
-- ==============================

CREATE DATABASE employee_db;
USE employee_db;

-- ==============================
-- MASTER TABLES
-- ==============================

CREATE TABLE departments (
    department_id CHAR(8) PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE roles (
    role_id CHAR(8) PRIMARY KEY,
    role_name VARCHAR(100)
);

CREATE TABLE teams (
    team_id CHAR(8),
    team_lead_id CHAR(10) NOT NULL,
    
    PRIMARY KEY (team_id)
);

-- ==============================
-- EMPLOYEE TABLE
-- ==============================

CREATE TABLE employees (
    emp_id CHAR(10) NOT NULL,
    emp_name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    joining_date DATE,
    department_id CHAR(8) NOT NULL,
    team_id CHAR(8) NOT NULL,
    role_id CHAR(8) NOT NULL,
    
    PRIMARY KEY (emp_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    FOREIGN KEY (team_id) REFERENCES teams(team_id),
    FOREIGN KEY (role_id) REFERENCES roles(role_id)
);

-- ==============================
-- RECRUITERS TABLE
-- ==============================

CREATE TABLE recruiters (
    recruiter_id CHAR(10),
    recruiter_name VARCHAR(100),
    
    FOREIGN KEY (recruiter_id) REFERENCES employees(emp_id)
);

-- ==============================
-- PROJECT TABLES
-- ==============================

CREATE TABLE projects (
    project_id CHAR(8) PRIMARY KEY,
    project_name VARCHAR(100),
    current_status VARCHAR(100) DEFAULT "On Going",
    start_date DATE,
    end_date DATE DEFAULT NULL,
    team_id CHAR(8),

    FOREIGN KEY (team_id) REFERENCES teams(team_id)
);

CREATE TABLE employee_projects (
    emp_id CHAR(10),
    project_id CHAR(8),
    start_date DATE,
    end_date DATE DEFAULT NULL,
    current_status VARCHAR(100) DEFAULT "Working",

    PRIMARY KEY (emp_id, project_id),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

-- ==============================
-- SALARY TABLE
-- ==============================

CREATE TABLE salary_history (
    salary_id CHAR(8) PRIMARY KEY,
    emp_id CHAR(10),
    base_salary FLOAT,
    bonas FLOAT,
    stock FLOAT,
    effective_from_date DATE,

    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

-- ==============================
-- LEAVE MANAGEMENT TABLE
-- ==============================

CREATE TABLE leave_record (
    leave_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id CHAR(10),
    leave_type ENUM("Sick","Casual","Paid","Unpaid"),
    start_date DATE,
    end_date DATE,
    status ENUM('Pending', 'Approved', 'Rejected'),

    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

-- ==============================
-- PERFORMANCE REVIEW TABLE
-- ==============================

CREATE TABLE performance_reviews (
    review_id CHAR(8),
    emp_id CHAR(10),
    overall_rating FLOAT CHECK (overall_rating >= 0 AND overall_rating <= 5),
    performance_effeciency FLOAT CHECK (performance_effeciency >= 0 AND performance_effeciency <= 1),
    review_date DATE,

    PRIMARY KEY (review_id),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);
