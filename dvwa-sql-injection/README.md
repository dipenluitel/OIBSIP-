# SQL Injection Demonstration on DVWA (Low Security)

## Project Overview

This project demonstrates a classic SQL Injection vulnerability using Damn Vulnerable Web Application (DVWA) running on a local XAMPP server. 
The objective is to understand how SQL Injection works, observe the data exposed by the vulnerability, and learn how developers can prevent 
this type of attack.

> **Ethical Notice:** This demonstration was performed only on a locally hosted DVWA instance for educational purposes. No real websites or
> third-party systems were targeted.

---

# Objectives

* Install and configure DVWA on a local machine.
* Set the DVWA security level to **Low**.
* Demonstrate SQL Injection in the SQL Injection module.
* Observe the information returned by the application.
* Explain why the vulnerability exists.
* Describe secure coding techniques to prevent SQL Injection.

---

# Tools Used

* Windows 11
* XAMPP
* Apache Web Server
* MySQL Database
* DVWA (Damn Vulnerable Web Application)
* Google Chrome (or another web browser)

---

# DVWA Setup

1. Installed XAMPP.
2. Started Apache and MySQL services.
3. Copied the DVWA folder into the XAMPP `htdocs` directory.
4. Configured the DVWA database settings.
5. Created the database using the DVWA setup page.
6. Logged in using the default administrator account.
7. Changed the DVWA Security Level to **Low**.

---

# What is SQL Injection?

SQL Injection is a web security vulnerability that occurs when an application includes user input directly in SQL queries without proper
protection. An attacker can manipulate the query by entering specially crafted input, causing the database to return unintended information or
execute unintended commands.

---

# Why the Demonstration Works

The SQL Injection page in DVWA (Low Security) does not properly separate user input from SQL commands. Because the application does not use
parameterized queries or prepared statements, specially crafted input can change the logic of the SQL query.

---

# Demonstration

## Attempt 1

* Payload: *(See `sql_injection_notes.md`)*
* Result:

  * Describe what DVWA displayed during your own test.
  * Include the corresponding screenshot.

---

## Attempt 2

* Payload: *(See `sql_injection_notes.md`)*
* Result:

  * Describe what DVWA displayed during your own test.
  * Include the corresponding screenshot.

---

# Data Exposed

During the demonstration, the vulnerable application returned database records that should normally only be displayed after valid input.
This shows how SQL Injection can expose sensitive information when applications fail to validate and safely process user input.

---

# Prevention

Developers can prevent SQL Injection by:

* Using prepared statements (parameterized queries).
* Validating and sanitizing user input.
* Applying the principle of least privilege for database accounts.
* Avoiding dynamic SQL built directly from user input.
* Using secure error handling that does not reveal database information.

---

# Screenshots

* DVWA Setup
* Security Level (Low)
* SQL Injection Module
* Injection Attempt 1
* Injection Attempt 2
* Results

---

# Conclusion

This project demonstrated how SQL Injection vulnerabilities can expose database information when applications do not safely handle user input. 
It also highlighted the importance of secure coding practices such as prepared statements and parameterized queries to protect web applications
against SQL Injection attacks.
