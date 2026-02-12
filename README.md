# 🏢 Enterprise HR Data Model (SQL Project)

A complete **Enterprise Human Resource (HR) Database System** designed using SQL to manage employees, departments, teams, projects, salaries, leaves, and performance reviews with proper relational modeling and constraints.

This project demonstrates **real-world database design, normalization, relationships, and SQL best practices**, suitable for Data Analyst, Backend, and Database portfolio projects.

---

## 📌 Project Overview

The goal of this project is to design and implement a scalable HR database that supports:

- Employee management
- Department & role hierarchy
- Team structure
- Project allocation
- Salary history tracking
- Leave management
- Performance evaluation
- Recruiter mapping

All tables are connected using **primary keys, foreign keys, constraints, and relationships** to ensure data integrity.

---

## 🗂️ Database Schema

The database consists of the following tables:

### 🧑‍💼 Master Tables
- `employees`
- `departments`
- `roles`
- `teams`
- `recruiters`

### 📊 Operational Tables
- `projects`
- `employee_projects`
- `salary_history`
- `leave_record`
- `performance_reviews`

---

## 🧩 ER Diagram

Entity Relationship Diagram (ERD) of the database:

![ER Diagram](https://github.com/Soumodwip-Mondal/enterprise-hr-data-model/blob/main/Data%20Model/emp_data_model.png)

This diagram shows how all entities are connected using foreign key relationships.

---

## 🛠️ Technologies Used

- **Database:** MySQL  
- **Query Language:** SQL  
- **Design:** ER Diagram (Data Modeling)  
- **Version Control:** Git & GitHub  

---

## 🏗️ Key Features of the Data Model

### ✅ Relational Design
- Normalized schema (up to 3NF)
- Primary & Foreign Keys
- Many-to-Many relationships using junction tables

### ✅ Data Integrity
- CHECK constraints (ratings, efficiency)
- ENUM types (leave type, status)
- UNIQUE constraints (email)
- Referential integrity using foreign keys

### ✅ Real-World HR System
- Employees assigned to departments, roles, and teams
- Employees working on multiple projects
- Salary history tracking
- Leave management system
- Performance evaluation system

---

## 🧪 Example Use Cases

This database can answer questions like:

- Which employees are working on which projects?
- Who is the team lead of each team?
- Salary growth of an employee over time
- Employees with the highest performance rating
- Leave history of employees
- Project-wise employee allocation

---

## 🧑‍💻 SQL Implementation

The entire database is created using SQL:

- Database creation
- Table creation
- Primary & foreign keys
- Constraints
- Relationships

📁 You can find the SQL script in this repository.

---

## 🚀 Future Improvements

- Add indexes for performance optimization
- Add audit logs and triggers
- Create views for reporting
- Add stored procedures and advanced queries
- Build dashboards using Power BI / Tableau

---

## 👨‍🎓 Author

**Soumodwip Mondal**  
B.Tech Student | Aspiring Data Analyst & Product Analyst  

🔗 GitHub: https://github.com/Soumodwip-Mondal  

---

