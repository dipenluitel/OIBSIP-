# Task 8 – Capture Network Traffic with Wireshark

## Project Overview

This project demonstrates the use of **Wireshark**, a network protocol analyzer, to capture and analyze live network traffic. During the capture session, different network protocols such as HTTP, DNS, and TCP were filtered and examined. The project also includes an analysis of a TCP three-way handshake and highlights the security risks of unencrypted HTTP traffic.

---

# Objective

The objective of this task is to:

* Install and configure Wireshark.
* Capture live network traffic.
* Filter packets using different protocols.
* Analyze HTTP, DNS, and TCP traffic.
* Export the packet capture file.
* Understand why encrypted communication (HTTPS) is important.

---

# Tools Used

* Windows 11
* Wireshark
* Npcap
* Google Chrome
* GitHub

---

# Installation

1. Download Wireshark from the official website.
2. Run the installer.
3. During installation, ensure **Npcap** is selected (required for packet capturing).
4. Complete the installation.
5. Launch Wireshark (Administrator privileges may be required to capture packets).

---

# Packet Capture

The active Wi-Fi network interface was selected, and network traffic was captured for approximately **2 minutes**.

During the capture:

* Web pages were visited.
* DNS lookups were generated.
* HTTP traffic was generated using `http://neverssl.com`.

The capture file is included as:

```text
wireshark_capture.pcap
```

---

# Display Filters Used

### HTTP

```text
http
```

Purpose:

Displays only HTTP packets.

---

### DNS

```text
dns
```

Purpose:

Displays DNS query and response packets.

---

### TCP

```text
tcp
```

Purpose:

Displays all TCP packets, including the TCP three-way handshake.

---

# TCP Three-Way Handshake

A TCP connection is established using three packets.

### Step 1 – SYN

The client initiates the connection by sending a SYN packet.

### Step 2 – SYN-ACK

The server responds with a SYN-ACK packet, acknowledging the client's request.

### Step 3 – ACK

The client sends an ACK packet to complete the connection.

Once these three packets are exchanged, data transmission begins.

---

# Security Observation

One HTTP GET request was identified during packet analysis.

The following information was visible because HTTP traffic is not encrypted:

* Request method (GET)
* Destination host
* Requested resource (URL/path)
* HTTP version
* User-Agent information

This demonstrates that anyone with access to the network could observe request details when HTTP is used.

---

# Why HTTP is Dangerous

HTTP sends information in plain text without encryption. Attackers who can observe network traffic may be able to read transmitted requests and responses. This makes HTTP unsuitable for transmitting sensitive information such as login credentials or personal data.

---

# How HTTPS Protects Data

HTTPS uses Transport Layer Security (TLS) to encrypt communication between a client and a server. Encryption helps protect the confidentiality and integrity of the transmitted data, making it much more difficult for unauthorized parties to observe or modify the communication.

---

# Glossary

### Packet

A small unit of data transmitted across a computer network.

### Protocol

A set of rules that defines how devices communicate over a network.

### Port

A logical communication endpoint used by applications to send and receive network traffic.

### Payload

The actual data carried inside a network packet.

### Handshake

The process used to establish a reliable network connection before data is exchanged. In TCP, this is known as the three-way handshake.

---

# Files Included

```
Task8-Wireshark/
│
├── README.md
├── analysis.md
├── wireshark_capture.pcap
└── screenshots/
    ├── 01_capture_started.png
    ├── 02_http_filter.png
    ├── 03_dns_filter.png
    ├── 04_tcp_handshake.png
    └── 05_http_get_request.png
```

---

# Conclusion

This project demonstrated how Wireshark can be used to capture and analyze network traffic. By filtering HTTP, DNS, and TCP packets, it was possible to observe how network communication works and understand the importance of encrypted protocols such as HTTPS. The exercise also reinforced the value of packet analysis for troubleshooting and cybersecurity investigations.

