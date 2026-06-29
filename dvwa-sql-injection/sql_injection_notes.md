# SQL Injection Notes

## Environment

* Operating System: Windows 11
* Web Server: XAMPP
* Application: DVWA (Damn Vulnerable Web Application)
* Security Level: Low
* Database: MySQL/MariaDB

---

## Attempt 1

### Input Used

```
' or '1'='1
```

### Result

The application returned multiple user records from the database:

* admin / admin
* Gordon / Brown
* Hack / Me
* Pablo / Picasso
* Bob / Smith

### Observation

Instead of returning a single user record, the application displayed multiple records. This demonstrates that the application accepted specially crafted input and processed it as part of the database query. As a result, information that would normally be restricted was displayed.

### Screenshot

See: `screenshots/05_payload_1.png`

---

## Attempt 2

### Input Used

```
1 order by 1
```

### Result

The application returned:

* First name: admin
* Surname: admin

### Observation

The application processed the input successfully and returned information from the database. This shows that the input affected how the underlying SQL query was interpreted by the application.

### Screenshot

See: `screenshots/06_payload_2.png`

---

## Data Exposed

The SQL Injection demonstration exposed user information stored in the DVWA database, including:

* User IDs
* First Names
* Surnames

This information should normally only be returned when valid application logic is followed.

---

## Why the Vulnerability Exists

DVWA is intentionally designed to be vulnerable at the Low security setting. The application does not adequately protect database queries from user-supplied input, allowing the database query behavior to be influenced by that input.

---

## Prevention Methods

Developers can prevent SQL Injection by:

1. Using prepared statements (parameterized queries).
2. Validating and sanitizing user input.
3. Applying the principle of least privilege to database accounts.
4. Avoiding dynamic SQL constructed directly from user input.
5. Using secure error handling that does not reveal database details.

---

## Conclusion

This exercise demonstrated how improper handling of user input can expose sensitive database information. SQL Injection remains one of the most common web application vulnerabilities and can be effectively prevented through secure coding practices such as prepared statements and proper input validation.
