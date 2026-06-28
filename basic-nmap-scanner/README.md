# Port Analysis

**Port**		 
135	
**Service**
Microsoft RPC
**Description**
Used for communication between Windows applications and services.	
**Security Risk**
Should not be exposed to untrusted networks because attackers may target RPC vulnerabilities.


**Port**
139	
**Service**
NetBIOS Session Service	
**Description**
Provides file and printer sharing over NetBIOS.	
**Security Risk**
Can reveal shared resources and should generally be disabled if not needed.


**Port**		 
445
**Service**
Microsoft-DS (SMB)	
**Description**
Used for Windows file and printer sharing.
**Security Risk**
Frequently targeted by malware and ransomware. It should be accessible only on trusted networks.


**Port**		 
8090	
**Service**
Unknown (tcpwrapped)	
**Description**
A custom application or service is listening on this port, but Nmap could not identify it.
**Security Risk**
Verify which application is using this port. If unnecessary, close it or restrict access with a firewall.

# Security Analysis
The scan identified four open TCP ports on the Windows 11 system. Ports 135, 139, and 445 are standard Windows networking services used for RPC and file sharing. These services are common in Windows environments but should not be exposed to untrusted networks because they have historically been targeted by attackers. Port 8090 was detected as open but returned "tcpwrapped," indicating that the service is protected or not identifiable by Nmap. The system firewall should remain enabled, unnecessary services should be disabled, and file sharing should only be allowed on trusted networks.
