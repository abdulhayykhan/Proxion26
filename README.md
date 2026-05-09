# Proxion '26 - Query Quest Solutions

![MySQL](https://img.shields.io/badge/MySQL-8.0+-blue?logo=mysql) ![SQL](https://img.shields.io/badge/Language-SQL-green) ![Team](https://img.shields.io/badge/Team-Binary%20Knights-orange) ![Status](https://img.shields.io/badge/Status-Complete-brightgreen)

## Overview

Solutions for **PROXION '26 Query Quest** by SENTEC. **25 optimized MySQL 8.0 queries** solving real-world database challenges. Covers window functions, self-joins, CTEs, subqueries, and advanced date operations.

## Team: Binary Knights

* **Abdul Hayy Khan**
* **Muhammad Fasih**
* **Muhammad Amaan**
* **Muhammad Nihal**

## Schema

* **Core**: Employees, Departments, Customers, Orders, OrderDetails, Products, Sales.
* **Supporting**: Logins, Logs, Weather.

## Usage

Clone the repository and execute standalone scripts.

```bash
git clone https://github.com/abdulhayykhan/Proxion26.git
cd Proxion26
mysql -u [username] -p [database] < q01.sql
```

## Challenges

* **q01.sql – q10.sql** (10 queries): Standard aggregations, anti-joins, and correlated subqueries.
* **q11.sql – q25.sql** (15 queries): Advanced logic including window functions (`ROW_NUMBER`, `DENSE_RANK`), running totals, consecutive date tracking, and month-over-month growth calculations.

## Key Concepts Demonstrated

- **Window Functions**: `ROW_NUMBER()`, `DENSE_RANK()`, `SUM() OVER()`
- **Advanced Joins**: Self-joins, multi-table joins, anti-joins
- **Date Operations**: `DATE_ADD()`, `DATE_SUB()`, `PERIOD_DIFF()`, `DATE_FORMAT()`
- **Subqueries**: Correlated, nested, and complex aggregations
- **Performance**: Optimized queries for efficiency and readability

## Verification Status

All 25 queries have been verified for:
- ✓ **Syntax Correctness** - Valid MySQL 8.0
- ✓ **Logic Accuracy** - Correct implementations
- ✓ **Output Validation** - Against expected results


## Documentation

- **Problem Statement**: See `Query Quest Module — Problem Statement.pdf`
- **Complete Solutions**: See `Complete Solution.pdf`

---

Made with ❤️ by [Abdul Hayy Khan](https://linkedin.com/in/abdulhayykhan)