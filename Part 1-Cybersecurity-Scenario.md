# Part 1: Cybersecurity Scenario (30 points)

#### Objective: Assess the candidate's understanding of security operations, cyber defense, threat
intelligence, and incident response.

### Scenario: You are a security analyst at a financial company. Recently, your organization experienced a
security breach. The attack vector was an unpatched vulnerability in a web application that allowed
attackers to gain unauthorized access to the network. Pick a cloud provider like AWS or Azure for this
scenario.


## Tasks



### 1. Threat Intelligence Report (10 points):

#### List the types of attack that could be used.
- SQL Injection (SQLi)
- Cross-Site Scripting (XSS)
- Cross-Site Request Forgery (CSRF)
- Remote Code Execution (RCE)
- Directory Traversal
- Insecure Deserialization
- Server-Side Request Forgery (SSRF)
- Privilege Escalation
- Man-in-the-Middle (MitM) Attacks
- Credential Stuffing

#### Explain how a vulnerability exploited can provide access to the network.
An attacker may discover that a sites login form is vulnerable to SQL injection, 

By exploiting this vulnerability an attacker can gain access to a database and be able to read, modify, and/or data and other sensistive information. They may alos perform other malicious actions.

To comprise a network from the comprised webserver the attacker can use tools like **'nmap'** or **'ping'** to find other systems running on the network. This would allow the attack to perform additional recon on additional vulnerable systems allowing them to move laterally within the network potenially installing backdoors for persistent access. 

#### Suggest preventive measures to avoid similar incidents in the future (AWS).
**1. Patch Management**
- **Automatic Patching:** Use AWS Systems Manager Patch Manager to automate patching operating systems and applications.
- **Regular Vulnerability Scanning:** Use AWS Inspector to regularly scan for vulnerabilities and ensure patches are applied.

**2. Web Application Security**
- **Web Application Firewall (WAF):** Deploy AWS WAF to protect web applications from common exploits such as SQL Injection, XSS and the other OSWASP top 10 vulnerabilities.
- **Application Load Balancer (ALB):** Use ALB with integrated AWS WAF to inspect incoming traffic and block malicious requests.

**3. Network Security**
- **Security Groups and Network ACLs:** Configure Security Groups and Network ACLs to limit inbound and outbound traffic to only necessary ports and IP ranges.
- **VPC Flow Logs:** Enable VPC Flow Logs to capture traffic going to and from network interfaces in your VPC(s).

**4. Identity and Access Management (IAM)**
- **Least Privilege Principle:** Apply the principle of least privilege using IAM roles and policies to ensure users and services have only the permissions they need.
- **Multi-Factor Authentication (MFA):** Enforce MFA for all users, especially those with administrative access.

**5. Encryption and Data Protection**
- **Data Encryption:** Use AWS Key Management Service (KMS) to encrypt data at rest and in transit.
- **SSL/TLS:** Make sure that all data in motion is also encrypted using SSL/TLS.

**6. Logging and Monitoring**
- **AWS CloudTrail:** Use AWS CloudTrail to log all API calls and monitor account activity.
- **Amazon GuardDuty:** Use Amazon GuardDuty for continuous monitoring and threat detection.

**7. Incident Response**
- **AWS Config:** Use AWS Config to monitor and record configurations and enable automated responses to configuration changes.
- **AWS Security Hub:** Centralize and prioritize security alerts and findings from AWS services and third-party products using AWS Security Hub.

**8. Application Security Practices**
- **Input Validation and Sanitization:** Valide and sanitize code to prevent injection attacks.
- **Secure Coding Practices:** Follow secure coding guidelines and perform code reviews to identify and fix vulnerabilities early in the development process.

**9. Audits and Compliance**
- **AWS Artifact:** Use AWS Artifact to access compliance reports and ensure adherence to industry standards and regulations.
- **Third-Party Audits:** Conduct regular third-party security audits and penetration testing to identify and remediate potential security gaps.

**10. Training and Awareness**
- **Security Training:** Provide regular security training for developers and IT staff on the latest security practices and threat awareness.
- **Phishing Simulations:** Conduct phishing simulations and other social engineering tests to educate employees about potential threats.


#### List which resources can be affected by these types of attacks (AWS).
- EC2 Instances
- RDS
- S3
- Lambda
- API Gateway
- IAM
- Elastic Beanstalk
- CloudFront
- DynamoDB
- Fargate





### 2. Incident Response Plan (10 points)

**Use NIST Computer Security Incident Handling Guide (NIST SP 800-61) framework**

**1. Identification**
- **Detection Systems:** Use AWS CloudTrail, Amazon GuardDuty, and AWS Config to detect and log suspicious activities.
- **Alerting Mechanisms:** Set up Amazon CloudWatch Alarms to notify the IRT of potential breaches.
- **Initial Analysis:** Gather and analyze logs from affected systems to understand the scope and nature of the breach.

**2. Containment**
**Immediate Containment**
- **Isolate Affected Systems:** Use AWS Security Groups and Network ACLs to isolate compromised EC2 instances and services.
- **Quarantine User Accounts:** Temporarily disable compromised IAM user accounts and revoke their credentials.

**Short-term Containment**
- **Snapshot Affected Instances:** Create Amazon EBS snapshots of affected EC2 instances for forensic analysis.
- **Redirect Traffic:** Use AWS WAF to block malicious IP addresses and redirect traffic away from compromised applications.

**3. Eradication**
- **Identify Root Cause:** Conduct a detailed investigation to determine the root cause of the breach.
- **Remove Malware:** Use AWS Systems Manager to run scripts that remove malware and unauthorized software.
- **Apply Patches:** Ensure all systems are patched using AWS Systems Manager Patch Manager.
- **Verify Clean Systems:** Perform vulnerability scans using Amazon Inspector to ensure no vulnerabilities remain.

**4. Recovery**
- **Restore Systems:**
  - **Launch Clean Instances:** Use AMIs to launch new, clean EC2 instances to replace compromised ones.
  - **Restore Data:** Restore data from known good backups stored in Amazon S3 or AWS Backup.
- **Monitor Systems:** Use Amazon CloudWatch, AWS CloudTrail, and Amazon GuardDuty to closely monitor the environment for any signs of recurring issues.
- **Validate Security:** Conduct a full security assessment to ensure all systems are secure and free from vulnerabilities.

## 5. Lessons Learned
- **Post-Incident Analysis:** Conduct a review of the incident, including the the response.
- **Update Incident Response Plan:** Revise and improve the incident response plan based on lessons learned.
- **Report to Management:** Communicate findings and improvements to management.


### 3. Network Security Measures (10 points)

#### 1. Network Segmentation
- **Amazon VPC (Virtual Private Cloud):** Set up separate VPCs to isolate environments and resources
- **Subnets:** Divide each VPC into public and private subnets. Place sensitive resources, like databases, in private subnets without direct internet access.
- **Security Groups:** Use Security Groups to control inbound and outbound traffic at the instance level.

#### 2. Intrusion Detection and Prevention System (IDS/IPS)
- **Amazon GuardDuty:** Enable GuardDuty for threat detection. It  monitors for malicious activities and unauthorized behavior using machine learning, anomaly detection, and integrated threat intelligence.

#### 3. Web Application Firewall (WAF)
- **AWS WAF:** Deploy AWS WAF to protect web applications. Use predefined and custom rules from the AWS Managed Rules rule groups to guard against common vulnerabilities.
- **Amazon CloudFront:** Integrate AWS WAF with Amazon CloudFront (CDN) to provide additional protection by blocking malicious traffic before it reaches our applications.

#### 4. Logging and Monitoring:
- **AWS CloudTrail:** Enable CloudTrail to log all API calls, providing a comprehensive audit trail of activities in our AWS account.
- **Amazon CloudWatch:** Set up CloudWatch Logs and Alarms to monitor and alert on suspicious activities and performance issues.
