# Task 3 – SQL Injection Demonstration on DVWA (Low Security)

## Objective

The objective of this project is to demonstrate a classic SQL Injection vulnerability using the Damn Vulnerable Web Application (DVWA) running in a local environment. The assessment was performed only for educational purposes on a self-hosted application to understand how SQL Injection works, its potential impact, and recommended mitigation techniques.

---

## Tools Used

- DVWA (Damn Vulnerable Web Application)
- XAMPP (Apache, PHP, MySQL)
- Windows 11
- Web Browser (Google Chrome)
- Burp Suite (Optional)

---

## Project Structure

```
SQL-Injection-DVWA-Low/
├── README.md
├── sql_injection_notes.md
├── screenshots/
│   ├── 01_dvwa_setup.png
│   ├── 02_security_low.png
│   ├── 03_sql_injection_page.png
│   ├── 04_payload_test_1.png
│   ├── 05_payload_test_2.png
│   └── 06_results.png
```

---

## Project Overview

DVWA is an intentionally vulnerable web application designed for learning web security.

For this task:

- DVWA was installed locally using XAMPP.
- The security level was set to **Low**.
- The SQL Injection module was tested.
- Multiple SQL Injection test inputs were evaluated.
- The application responses were documented.
- Findings and remediation techniques were analysed.

---

## Environment

| Component | Value |
|----------|-------|
| Operating System | Windows 11 |
| Web Server | Apache (XAMPP) |
| Database | MySQL |
| PHP Version | 8.x |
| DVWA Security Level | Low |

---

## Testing Process

The following steps were completed:

1. Installed XAMPP.
2. Installed and configured DVWA.
3. Created the DVWA database.
4. Logged into DVWA.
5. Set the security level to **Low**.
6. Opened the SQL Injection module.
7. Performed SQL Injection testing.
8. Recorded observations.
9. Captured screenshots.

---

## Results

The application was vulnerable to SQL Injection at the Low security level.

The testing demonstrated that insufficient input validation can expose sensitive information stored in the database.

All testing was performed exclusively on the local DVWA instance.

---

## Security Impact

SQL Injection vulnerabilities may allow an attacker to:

- Retrieve sensitive information
- Bypass application logic
- Modify database records
- Delete information
- Gain unauthorized access
- Compromise application confidentiality

---

## Prevention

Developers should follow secure coding practices, including:

- Use parameterized queries (Prepared Statements)
- Validate all user input
- Sanitize input where appropriate
- Apply the principle of least privilege
- Avoid displaying database error messages
- Perform regular security testing

---

## Learning Outcomes

This project helped demonstrate:

- Basic SQL Injection concepts
- How insecure database queries introduce vulnerabilities
- The importance of input validation
- Secure database programming practices
- Responsible security testing in a controlled environment

---

## Disclaimer

This project was conducted **only against a locally hosted DVWA instance** for educational purposes.

No testing was performed against public websites, production systems, or systems without explicit authorization.

---


## Author

**Dipen Luitel**

OIBSIP – Cyber Security Internship
