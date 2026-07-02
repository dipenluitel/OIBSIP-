# Wireshark Traffic Analysis

## Objective

The objective of this task was to capture live network traffic using Wireshark, apply protocol-specific display filters, analyse packet contents, and identify potential security observations.

---

# Tool Used

- Wireshark
- Windows 11
- Local Wi-Fi Network Interface

---

# Capture Information

- **Capture Duration:** Approximately 5 minutes
- **Network Interface:** Wi-Fi
- **Target Environment:** Local network traffic generated while browsing websites and accessing DVWA.

---

# Display Filters Used

| Filter | Purpose |
|---------|---------|
| `http` | Display HTTP traffic |
| `dns` | Display DNS queries and responses |
| `tcp` | Display TCP communication |

---

# HTTP Traffic Analysis

## Display Filter

```text
http
```

## Observation

The HTTP filter displayed unencrypted web traffic exchanged between the client and remote web servers.

Captured traffic included:

- HTTP GET requests
- HTTP/1.1 200 OK responses
- HTTP/1.1 404 Not Found responses
- Requests for web resources such as HTML pages and favicon.ico

Example observations:

- GET /
- GET /favicon.ico
- HTTP/1.1 200 OK
- HTTP/1.1 404 Not Found

## Security Observation

HTTP traffic is transmitted without encryption.

Anyone monitoring the network could potentially observe:

- Requested URLs
- Requested files
- HTTP headers
- Cookies (if transmitted)
- Browsing activity

HTTPS should be used to encrypt web traffic and prevent eavesdropping.

**Screenshot**

```
wireshark/screenshots/
```

---

# DNS Traffic Analysis

## Display Filter

```text
dns
```

## Observation

The DNS filter displayed several DNS queries and responses generated during normal web browsing.

Observed domain lookups included:

- sectigo.com
- crt.sectigo.com
- netsolhost.com

The capture contained:

- Standard DNS Queries
- Standard DNS Responses
- IPv4 (A) Records
- IPv6 (AAAA) Records

## Security Observation

DNS traffic reveals which domains a client is attempting to access.

Although DNS packets do not contain webpage content, they can expose browsing behaviour and network activity.

Encrypted DNS technologies such as DNS-over-HTTPS (DoH) and DNS-over-TLS (DoT) help protect DNS traffic.

**Screenshot**

```
wireshark/screenshots/
```

---

# TCP Traffic Analysis

## Display Filter

```text
tcp
```

## Observation

The TCP filter displayed reliable transport-layer communication between the client and remote servers.

Observed packet types included:

- ACK packets
- PSH, ACK packets
- Duplicate ACK packets
- HTTPS communication over TCP Port 443

The selected packet demonstrates acknowledgement of received TCP segments during an active session.

## Security Observation

TCP provides reliable communication using acknowledgements, retransmissions, and sequence numbers.

Although TCP headers remain visible, HTTPS encrypts the application payload, preventing attackers from reading transmitted data.

**Screenshot**

```
wireshark/screenshots/
```

---

# Unencrypted Data Analysis

The HTTP capture demonstrated that web requests transmitted over HTTP are not encrypted.

Visible information may include:

- Requested URL
- HTTP Method
- Host Header
- User-Agent
- Cookies (if present)
- Response Status Codes

This illustrates why HTTP should not be used for sensitive communication.

---

# Why HTTPS Is More Secure

HTTPS encrypts communication using Transport Layer Security (TLS).

Benefits include:

- Confidentiality
- Integrity
- Authentication
- Protection against packet sniffing
- Protection against Man-in-the-Middle (MITM) attacks

Unlike HTTP, HTTPS prevents attackers from viewing sensitive application data even if network packets are captured.

---

# Security Findings

| Finding | Severity | Recommendation |
|----------|----------|----------------|
| HTTP traffic transmitted in plaintext | Medium | Redirect all HTTP traffic to HTTPS |
| DNS queries expose visited domains | Low | Consider DNS-over-HTTPS (DoH) or DNS-over-TLS (DoT) |
| TCP communication successfully established | Informational | Normal network behaviour |

---

# Conclusion

The Wireshark analysis successfully captured and analysed live network traffic using protocol-specific display filters.

The assessment demonstrated:

- HTTP requests and responses
- DNS name resolution
- TCP communication
- The importance of HTTPS for protecting sensitive information

The captured traffic highlights how network monitoring tools can identify both normal communication and potential security risks.
