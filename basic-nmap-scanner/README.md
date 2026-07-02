# Task 1 – Basic Nmap Scanner

## Objective

Perform a basic network reconnaissance scan using Nmap to identify active hosts, open ports, and running services on a local test network. This task demonstrates the fundamentals of network enumeration and security assessment.

---

## Tools Used

- Nmap
- Windows 11
- Command Prompt / PowerShell
- Local Test Network

---

## Project Structure

```
Basic-Nmap-Scanner/
├── README.md
├── nmap_scan_results.txt
└── screenshots/
    ├── scan_command.png
    └── scan_results.png
```

---

## Scan Performed

The following command was used to identify open ports, services, and operating system information:

```bash
nmap -sV -O <target-ip>
```

Example:

```bash
nmap -sV -O 192.168.1.68
```

### Command Options

| Option | Description |
|---------|-------------|
| `-sV` | Detects service versions running on open ports |
| `-O` | Attempts to detect the operating system |

---

## Scan Results

The scan identified:

- Active host on the local network
- Open TCP ports
- Running services and versions
- Estimated operating system information

Example findings:

| Port | Service | Status |
|------|---------|--------|
| 80 | HTTP | Open |
| 443 | HTTPS | Open |
| 3306 | MySQL | Open |

> Note: Actual results depend on the target machine.

---

## Security Observations

- Open ports increase the attack surface.
- Unnecessary services should be disabled.
- Services should always be updated to the latest version.
- Firewalls should restrict access to sensitive ports.

---

## How to Run

1. Install Nmap.
2. Open Command Prompt or PowerShell.
3. Execute:

```bash
nmap -sV -O <target-ip>
```

4. Save the output:

```bash
nmap -sV -O <target-ip> > nmap_scan_results.txt
```

---

## Learning Outcomes

- Learned how to use Nmap for network reconnaissance.
- Identified open ports and running services.
- Understood service version detection.
- Learned basic operating system fingerprinting.
- Practiced documenting security assessment findings.

---

## Ethics Statement

This scan was performed only on a local machine or a network that I own and have authorization to assess. No unauthorized systems or public networks were scanned.

---


## Author

**Dipen Luitel**

OIBSIP – Cyber Security Internship
