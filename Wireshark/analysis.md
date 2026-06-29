# Wireshark Analysis

## HTTP

- Display filter: `http`
- Observation:
  - HTTP requests were captured.
  - The packet showed request metadata such as the method and destination.

---

## DNS

- Display filter: `dns`
- Observation:
  - DNS queries and responses were observed.
  - These packets show how domain names are resolved to IP addresses.

---

## TCP

- Display filter: `tcp`

Three-Way Handshake:

1. SYN – Client initiates the connection.
2. SYN-ACK – Server acknowledges and accepts.
3. ACK – Client confirms the connection.

This establishes a reliable TCP connection before application data is exchanged.

---

## Security Observation

HTTP traffic is transmitted without encryption, making it easier for someone with network access to observe request contents. HTTPS mitigates this by encrypting data using TLS.
