# Full Network Security Assessment Report

## Assessment Information

**Assessor:** Dipen

**Date:** July 2026

**Target Network:** 192.168.1.68

**Operating System:** Windows 11

**Tools Used**

- Nmap
- Wireshark
- Nikto
- DVWA
- XAMPP

---

# Executive Summary

A security assessment was conducted against a locally hosted lab environment consisting of a Windows 11 workstation running Apache, PHP, MySQL, and DVWA.

The assessment included network reconnaissance, traffic analysis, and automated web vulnerability scanning.

Several security issues were identified, including exposed services, insecure HTTP communication, missing HTTP security headers, directory indexing, and potentially sensitive information disclosure.

No Critical findings were observed because the environment is intentionally vulnerable for educational purposes.

Overall Risk Rating:

**Medium**

---

# Scope

## Target

192.168.1.68

## Services

- HTTP
- Apache
- PHP
- MySQL
- SMB

## Assessment Window

Approximately 30 minutes.

---

# Phase 1 — Reconnaissance

Tool Used

Nmap

Command

```
nmap -sV -O 192.168.1.68
```

### Results

| Port | Service | Status |
|-------|----------|--------|
|80|HTTP|Open|
|135|MSRPC|Open|
|139|NetBIOS|Open|
|445|SMB|Open|

Operating System detected

Windows 11

Evidence

See:

- screenshots/01_nmap_scan.png

---

# Phase 2 — Traffic Analysis

Tool Used

Wireshark

Capture Time

5 minutes

Protocols Analysed

- HTTP
- DNS
- TCP
- ARP

Observations

HTTP requests were transmitted without encryption.

DNS queries were visible.

TCP three-way handshake completed normally.

ARP traffic showed local device communication.

Sensitive Data

Because HTTP is unencrypted, URLs and request headers could be viewed by anyone monitoring the network.

Evidence

- screenshots/02_http_filter.png

- screenshots/03_dns_filter.png

- screenshots/04_tcp_handshake.png

---

# Phase 3 — Web Vulnerability Scan

Tool

Nikto

Command

```
nikto -h http://192.168.1.68/dvwa
```

Summary

Nikto identified several configuration issues including:

- Missing X-Frame-Options header

- Directory indexing

- HTTP TRACE enabled

- robots.txt exposed

- Configuration directory accessible

Evidence

- screenshots/05_nikto_scan.png

- screenshots/06_nikto_results.png

---

# Findings Register

|ID|Finding|Severity|Affected Asset|Recommendation|
|---|--------|---------|---------------|--------------|
|F-01|HTTP enabled|Medium|Apache|Use HTTPS|
|F-02|Missing X-Frame-Options|Medium|Apache|Add Security Headers|
|F-03|Directory Listing Enabled|Medium|Apache|Disable Indexes|
|F-04|HTTP TRACE Enabled|Low|Apache|Disable TRACE|
|F-05|robots.txt Disclosure|Low|DVWA|Limit Information Disclosure|
|F-06|SMB Port Open|Medium|Windows|Restrict Network Access|
|F-07|Unencrypted HTTP Traffic|High|Network|Implement HTTPS|

---

# Remediation Roadmap

|Priority|Finding|Effort|
|----------|---------|------|
|1|Enable HTTPS|Easy|
|2|Disable Directory Listing|Easy|
|3|Disable HTTP TRACE|Easy|
|4|Configure Security Headers|Easy|
|5|Restrict SMB Access|Medium|
|6|Regular Patch Management|Medium|

---

# Overall Risk

Medium

The environment intentionally contains vulnerable software for educational purposes.

In a production environment these findings should be addressed immediately.

---

# Conclusion

The assessment successfully demonstrated the use of multiple security tools including Nmap, Wireshark, and Nikto to identify potential weaknesses within a local network environment.

The findings highlight the importance of secure configuration, encrypted communication, and continuous vulnerability management.
