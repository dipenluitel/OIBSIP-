# Task 2 – Basic UFW Firewall Configuration

## Objective

Configure and manage a host-based firewall using UFW (Uncomplicated Firewall). This task demonstrates how to secure a Linux system by controlling inbound and outbound network traffic through firewall rules.

---

## Tools Used

- Ubuntu Linux
- UFW (Uncomplicated Firewall)
- Terminal
- Virtual Machine (Optional)

---

## Project Structure

```
Basic-UFW-Firewall/
├── README.md
├── firewall_rules.txt
├── screenshots/
│   ├── 01_ufw_status.png
│   ├── 02_enable_firewall.png
│   ├── 03_allow_ssh.png
│   ├── 04_allow_http.png
│   ├── 05_firewall_rules.png
│   └── 06_delete_rule.png
```

---

## Task Overview

The following firewall management tasks were performed:

- Installed UFW
- Enabled the firewall
- Allowed SSH traffic
- Allowed HTTP traffic
- Allowed HTTPS traffic
- Verified firewall status
- Listed active firewall rules
- Deleted a firewall rule
- Disabled the firewall (for demonstration)

---

## Commands Used

### Check UFW Status

```bash
sudo ufw status
```

### Enable UFW

```bash
sudo ufw enable
```

### Allow SSH

```bash
sudo ufw allow 22/tcp
```

### Allow HTTP

```bash
sudo ufw allow 80/tcp
```

### Allow HTTPS

```bash
sudo ufw allow 443/tcp
```

### View Numbered Rules

```bash
sudo ufw status numbered
```

### Delete a Rule

```bash
sudo ufw delete <rule-number>
```

Example:

```bash
sudo ufw delete 2
```

### Disable Firewall

```bash
sudo ufw disable
```

---

## Example Firewall Rules

| Port | Protocol | Purpose |
|------|----------|----------|
| 22 | TCP | SSH Remote Access |
| 80 | TCP | HTTP Web Server |
| 443 | TCP | HTTPS Secure Web Server |

---

## Security Observations

- A firewall blocks unauthorized network connections.
- Only required ports should be opened.
- SSH should only be enabled when remote access is necessary.
- Regularly review firewall rules to remove unnecessary entries.
- Principle of least privilege helps reduce the attack surface.

---

## Learning Outcomes

- Installed and configured UFW.
- Enabled and disabled the firewall.
- Allowed and removed firewall rules.
- Understood inbound traffic filtering.
- Learned basic Linux firewall management.

---

## Ethics Statement

This firewall configuration was performed on a local Linux system or virtual machine owned by the author. No unauthorized systems or production environments were modified.

---

## References

- https://wiki.ubuntu.com/UncomplicatedFirewall
- https://help.ubuntu.com/community/UFW
- https://owasp.org/

---

## Author

**Dipen Luitel**

OIBSIP – Cyber Security Internship
