# Bank Management System

A desktop banking application developed in **Java Swing** using **Apache NetBeans** IDE, connected to a **MySQL** database managed with **MySQL Workbench**. This system supports user signup, login, and bank operations through a simple and intuitive GUI.

---

## Features

- User Signup with multi-step forms  
- Secure User Login  
- Account creation and management  
- Basic banking operations (deposit, withdrawal, balance enquiry)  
- MySQL backend database for persistent data storage  
- GUI built with Java Swing components  

---

## Requirements

- Java Development Kit (JDK) 8 or above  
- Apache NetBeans IDE (recommended for development)  
- MySQL Server (with MySQL Workbench for database management)  
- MySQL Connector/J (JDBC driver) included in `/lib` folder  

---

## Project Structure

BankManagementSystem/
├─ src/ # Java source code
├─ nbproject/ # NetBeans project files
├─ lib/ # Libraries (MySQL Connector/J)
├─ database/ # SQL files for creating/importing database tables
│ ├─ bankmanagementsystem_bank.sql
│ ├─ bankmanagementsystem_login.sql
│ ├─ bankmanagementsystem_signup.sql
│ ├─ bankmanagementsystem_signupthree.sql
│ └─ bankmanagementsystem_signuptwo.sql
├─ dist/ # Compiled runnable JAR after build
├─ README.md # This file



---

## Setup Instructions

### 1. Import Database

- Open **MySQL Workbench**  
- Create a new database, e.g.:  
  ```sql
  CREATE DATABASE bankmanagementsystem;
  USE bankmanagementsystem;
  Import all .sql files from the database/ folder to create tables and insert initial data.

### 2. Configure Database Connection in Code

Open the class responsible for DB connection (e.g., DBConnection.java)

Update the database URL, username, and password to match your local setup:

private static final String URL = "jdbc:mysql://localhost:3306/bankmanagementsystem";
private static final String USER = "root";
private static final String PASSWORD = "your_password";

### 3. Add MySQL Connector

Make sure mysql-connector-j-8.0.28.jar is inside the /lib folder

Added to project libraries in NetBeans (Project Properties → Libraries → Add JAR/Folder)

### 4. Build and Run

Use NetBeans Clean and Build to generate dist/BankManagementSystem.jar

Run the application from NetBeans or by executing the JAR:

java -jar dist/BankManagementSystem.jar

## Usage

Launch the app

Signup as a new user

Login with credentials

Perform banking transactions
