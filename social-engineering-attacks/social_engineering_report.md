# Research Report: Common Social Engineering Attacks

## Introduction

Social engineering is a cyberattack technique that manipulates people into revealing confidential information or performing actions that compromise security. Unlike technical attacks that exploit software vulnerabilities, social engineering targets human psychology by exploiting trust, curiosity, fear, or urgency. As organizations increasingly rely on digital communication, social engineering remains one of the most effective methods used by cybercriminals to gain unauthorized access to systems and sensitive information.

---

# 1. Phishing

## Explanation

Phishing is a fraudulent attempt to obtain sensitive information such as usernames, passwords, banking details, or personal information by pretending to be a trusted organization through emails, websites, or messages.

## Real-World Example

In 2020, attackers used phishing and social engineering techniques during the Twitter security breach to compromise employee accounts, allowing them to take control of high-profile verified Twitter accounts.

## Impact

* Credential theft
* Financial fraud
* Identity theft
* Malware infections
* Data breaches

## Mitigation Strategies

1. Provide regular cybersecurity awareness training.
2. Enable Multi-Factor Authentication (MFA).
3. Deploy email filtering and anti-phishing solutions.

---

# 2. Spear Phishing

## Explanation

Spear phishing is a targeted phishing attack directed at a specific individual or organization. Attackers personalize messages using information gathered about the victim to increase credibility.

## Real-World Example

The 2011 RSA SecurID breach began with a spear phishing email sent to employees. The attack ultimately compromised sensitive security information used in authentication products.

## Impact

* Corporate espionage
* Theft of confidential information
* Network compromise
* Financial losses

## Mitigation Strategies

1. Employee security awareness training.
2. Email authentication technologies (SPF, DKIM, DMARC).
3. Endpoint detection and monitoring.

---

# 3. Pretexting

## Explanation

Pretexting occurs when an attacker creates a fabricated scenario to persuade a victim to disclose confidential information or perform an action that benefits the attacker.

## Real-World Example

Attackers have impersonated bank employees or IT support staff to convince victims to reveal passwords or verification codes.

## Impact

* Unauthorized account access
* Identity theft
* Financial fraud
* Confidential information disclosure

## Mitigation Strategies

1. Verify identities before sharing sensitive information.
2. Implement strict verification procedures.
3. Educate employees about impersonation attacks.

---

# 4. Baiting

## Explanation

Baiting tricks victims into interacting with a malicious item or offer, such as an infected USB drive or a fake software download, by exploiting curiosity or the promise of a reward.

## Real-World Example

Researchers have demonstrated that people often plug unknown USB devices found in public places into their computers, potentially allowing malware to execute.

## Impact

* Malware infections
* Data theft
* System compromise
* Network intrusion

## Mitigation Strategies

1. Restrict the use of removable media.
2. Disable automatic execution of USB devices.
3. Train users to avoid unknown devices and downloads.

---

# 5. Tailgating (Piggybacking)

## Explanation

Tailgating is a physical social engineering attack where an unauthorized individual gains access to a restricted area by following an authorized person through a secure entrance.

## Real-World Example

Attackers have entered office buildings by posing as delivery personnel or visitors and following employees through secured doors.

## Impact

* Physical theft
* Unauthorized system access
* Installation of malicious devices
* Information theft

## Mitigation Strategies

1. Require employees to use access cards individually.
2. Employ security guards and surveillance cameras.
3. Conduct regular physical security awareness training.

---

# Comparison Table

| Attack Type    | Primary Target       | Common Method             | Potential Impact       | Difficulty to Detect |
| -------------- | -------------------- | ------------------------- | ---------------------- | -------------------- |
| Phishing       | General users        | Fraudulent emails         | Credential theft       | Medium               |
| Spear Phishing | Specific individuals | Personalized emails       | Data breach            | High                 |
| Pretexting     | Employees            | Fake identity             | Information disclosure | High                 |
| Baiting        | General users        | Infected USB or downloads | Malware infection      | Medium               |
| Tailgating     | Organizations        | Physical access           | Unauthorized entry     | Medium               |

---

# Conclusion

Social engineering attacks exploit human behavior rather than technical vulnerabilities, making user awareness a critical part of cybersecurity.

### Key Takeaways

1. Employee awareness and regular cybersecurity training are essential to reduce social engineering risks.
2. Organizations should implement strong authentication mechanisms such as Multi-Factor Authentication (MFA) and verify identities before sharing sensitive information.
3. Combining technical controls with security policies and user education provides the best defense against social engineering attacks.

---

# References

1. National Institute of Standards and Technology (NIST). *Cybersecurity Framework (CSF)*.
2. Cybersecurity and Infrastructure Security Agency (CISA). *Avoiding Social Engineering and Phishing Attacks*.
3. SANS Institute Reading Room. *Social Engineering Research Papers*.
4. MITRE ATT&CK Framework.
5. Brian Krebs. *Krebs on Security*.
6. Wired. *Coverage of the 2020 Twitter Security Incident*.
