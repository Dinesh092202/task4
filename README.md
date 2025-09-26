# Task 4: Aggregate Functions and Grouping

## 🎯 Objective
Use aggregate functions and grouping to summarize and analyze tabular data.

## 🛠 Tools
- DB Browser for SQLite / MySQL Workbench

## 📑 Files
- **aggregate_queries.sql** → Contains:
  - Table creation
  - Sample data
  - Aggregate queries with `SUM`, `COUNT`, `AVG`
  - Usage of `GROUP BY` and `HAVING`
  - Expected results as comments

## 📝 Queries Overview
1. Count number of students in each course  
2. Find average age of students in each course  
3. Count students in each grade  
4. Get courses with more than 2 students (using `HAVING`)  
5. Find average age of students for each grade (filter average age > 20)  
6. Multi-column grouping (course + grade)

## ✅ Expected Outcome
- Learn how to use aggregate functions effectively.  
- Ability to group data using `GROUP BY`.  
- Filter summarized groups using `HAVING`.  
- Understand how to analyze data patterns.  

---

## 📊 ER Diagram

Below is the **Entity-Relationship (ER) Diagram** for the `students` table:

![ER Diagram](er-diagram.png)

- **students**  
  - `id` → Primary Key  
  - `name` → Student name  
  - `age` → Student age  
  - `course` → Course enrolled  
  - `grade` → Grade achieved  

---

## 🚀 How to Run
1. Open MySQL Workbench or DB Browser for SQLite.  
2. Run the `aggregate_queries.sql` file.  
3. Compare results with the expected output provided in comments.  
