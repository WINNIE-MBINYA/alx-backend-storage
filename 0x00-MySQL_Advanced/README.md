# 0x01-SQL Directory

This directory contains SQL scripts for a series of tasks designed to enhance your understanding and skills in MySQL database management. Each task focuses on a specific aspect of MySQL, including creating tables, optimizing queries, and implementing various database features such as stored procedures, triggers, and views.

## Table of Contents

- [Introduction](#introduction)
- [File Structure](#file-structure)
- [Tasks](#tasks)
  - [0-uniq_users.sql](#0-uniq_userssql)
  - [1-country_users.sql](#1-country_userssql)
  - [2-remove_users.sql](#2-remove_userssql)
  - [3-average_amount.sql](#3-average_amountsql)
  - [4-group_amount.sql](#4-group_amountsql)
  - [5-cumulative_amount.sql](#5-cumulative_amountsql)
  - [6-total_amount.sql](#6-total_amountsql)
  - [7-valid_email.sql](#7-valid_emailsql)
  - [8-clean_users.sql](#8-clean_userssql)
  - [9-avg_amount_by_country.sql](#9-avg_amount_by_countrysql)
  - [10-average_by_country.sql](#10-average_by_countrysql)
  - [11-duplicate_users.sql](#11-duplicate_userssql)
- [Resources](#resources)
- [How to Run](#how-to-run)

## Introduction

This series of tasks will help you practice and solidify your knowledge of MySQL. You will create tables, insert data, write and optimize queries, and implement advanced features such as stored procedures, functions, views, and triggers.

## File Structure

- **0-uniq_users.sql**: Script to create a table for unique users.
- **1-country_users.sql**: Script to count users per country.
- **2-remove_users.sql**: Script to remove users with a specific condition.
- **3-average_amount.sql**: Script to calculate the average amount of user transactions.
- **4-group_amount.sql**: Script to group transactions by user and calculate the total amount.
- **5-cumulative_amount.sql**: Script to calculate the cumulative amount of transactions.
- **6-total_amount.sql**: Script to calculate the total amount of transactions for all users.
- **7-valid_email.sql**: Script to filter users with valid email addresses.
- **8-clean_users.sql**: Script to clean up user data based on specific criteria.
- **9-avg_amount_by_country.sql**: Script to calculate the average transaction amount by country.
- **10-average_by_country.sql**: Script to calculate the average amount per user in each country.
- **11-duplicate_users.sql**: Script to identify and handle duplicate user records.

## Tasks

### 0-uniq_users.sql

This script creates a table to store unique user information with constraints to ensure data integrity.

### 1-country_users.sql

This script counts the number of users from each country and displays the results.

### 2-remove_users.sql

This script removes users from the database based on a specific condition, such as having an invalid email address.

### 3-average_amount.sql

This script calculates the average transaction amount for all users in the database.

### 4-group_amount.sql

This script groups transactions by user and calculates the total transaction amount for each user.

### 5-cumulative_amount.sql

This script calculates the cumulative transaction amount for all transactions in the database.

### 6-total_amount.sql

This script calculates the total transaction amount for all users in the database.

### 7-valid_email.sql

This script filters users to include only those with valid email addresses based on a specified pattern.

### 8-clean_users.sql

This script cleans up user data by removing or updating records based on specific criteria.

### 9-avg_amount_by_country.sql

This script calculates the average transaction amount for each country represented in the database.

### 10-average_by_country.sql

This script calculates the average transaction amount per user for each country.

### 11-duplicate_users.sql

This script identifies and handles duplicate user records in the database.

## Resources

Refer to the main [README.md](../README.md) file in the root of the repository for a comprehensive list of resources to understand the concepts and SQL syntax used in these tasks.

## How to Run

1. **Navigate to the directory:**

   ```sh
   cd 0x01-SQL
