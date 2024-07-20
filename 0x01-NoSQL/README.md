# 0x01-NoSQL

This directory contains various tasks and solutions for working with NoSQL databases, specifically MongoDB. The tasks range from basic CRUD operations to advanced data aggregation and manipulation.

## Table of Contents

1. [Description](#description)
2. [Setup](#setup)
3. [Tasks](#tasks)
    - [0. List Databases](#0-list-databases)
    - [1. List Collections](#1-list-collections)
    - [2. Create Database](#2-create-database)
    - [3. Create Collection](#3-create-collection)
    - [4. List All Documents](#4-list-all-documents)
    - [5. Insert Document](#5-insert-document)
    - [6. Count Documents](#6-count-documents)
    - [7. School by Name](#7-school-by-name)
    - [8. List All](#8-list-all)
    - [9. Insert School](#9-insert-school)
    - [10. Update Topics](#10-update-topics)
    - [11. Delete by Name](#11-delete-by-name)
    - [12. Log Stats](#12-log-stats)
    - [13. Log Stats with Grouping](#13-log-stats-with-grouping)
    - [14. Regex Filter](#14-regex-filter)
    - [15. Top Students](#15-top-students)
    - [16. Log Stats - New Version](#16-log-stats---new-version)

## Description

This project involves interacting with MongoDB using both the MongoDB shell and Python scripts. The tasks cover a variety of MongoDB operations, including querying, inserting, updating, and deleting documents, as well as advanced aggregation and data processing techniques.

## Setup

1. **Clone the repository:**
    ```sh
    git clone https://github.com/your-username/alx-backend-storage.git
    cd alx-backend-storage/0x01-NoSQL
    ```

2. **Install MongoDB:**
    Follow the instructions to install MongoDB on your operating system from the [official MongoDB documentation](https://docs.mongodb.com/manual/installation/).

3. **Install Python dependencies:**
    If you are running the Python scripts, ensure you have `pymongo` installed:
    ```sh
    pip install pymongo
    ```

## Tasks

### 0. List Databases
**File:** `0-list_databases`

Script to list all databases.

### 1. List Collections
**File:** `1-list_collections`

Script to list all collections in a database.

### 2. Create Database
**File:** `2-create_database`

Script to create a new database.

### 3. Create Collection
**File:** `3-create_collection`

Script to create a new collection in a database.

### 4. List All Documents
**File:** `4-list_all_documents`

Script to list all documents in a collection.

### 5. Insert Document
**File:** `5-insert_document`

Python function to insert a new document in a collection.

### 6. Count Documents
**File:** `6-count_documents`

Python function to count the number of documents in a collection.

### 7. School by Name
**File:** `7-school_by_name`

Python function to find a school by name in the collection.

### 8. List All
**File:** `8-all`

Python function to list all documents in a collection.

### 9. Insert School
**File:** `9-insert_school`

Python function to insert a new school document.

### 10. Update Topics
**File:** `10-update_topics`

Python function to update the topics of a school document based on the name, using upsert.

### 11. Delete by Name
**File:** `11-delete_by_name`

Python function to delete all documents with a specific name.

### 12. Log Stats
**File:** `12-log_stats.py`

Python script to print the log statistics from the `nginx` collection.

### 13. Log Stats with Grouping
**File:** `13-log_stats_grouped.py`

Python script to print log statistics, grouped by method and path.

### 14. Regex Filter
**File:** `100-find`

Script to list all documents with names starting with "Holberton".

### 15. Top Students
**File:** `101-students.py`

Python function to return all students sorted by average score.

### 16. Log Stats - New Version
**File:** `102-log_stats.py`

Python script to print log statistics and the top 10 most present IPs.
