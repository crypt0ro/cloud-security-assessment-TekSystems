# Part 2: Container Security Implementation (30 points)

### Objective: Evaluate the candidate's experience with container security, orchestration tools, and IaaS.

### Scenario: Your team is deploying a microservices-based application using Docker and Kubernetes. Security is a top priority, and you need to ensure that the container environment is secure from potential threats.

## Task


### 1. Docker Security Best Practices (10 points)

#### List and explain five Docker security best practices.
##### 1. Use Official and Trusted Images
**Explanation:**
- **Why:** Official and trusted images are maintained by reputable sources and are regularly update and recieve security patches Using these images reduces the risk of vulnerabilities.
- **How:** Always pull images from trusted repositories like Docker Hub, and verify the source of the image. Avoid using images from unknown or unverified sources.

##### 2. Implement the Principle of Least Privilege
**Explanation:**
- **Why:** Running containers with the least privileges necessary minimizes the potential damage that can be caused if a container is compromised. This practice limits the access and capabilities of the container.
- **How:** Avoid running containers as the root user. Use user namespaces and define specific permissions for each container.

##### 3. Scan Images for Vulnerabilities
**Explanation:**
**Why:** Regular scanning of images helps identify known vulnerabilities and ensures that any issues can be addressed promptly. This maintains the security posture of the container environment.
**How:** Use vulnerability scanning tools to automatically scan images for known security issues and vulnerabilities.

##### 4. Secure Docker Daemon and Network
**Explanation:**
**Why:** Securing the Docker daemon and network configurations helps prevent unauthorized access and potential attacks on the container infrastructure. This practice involves securing communication channels and limiting network exposure.
**How:** Configure TLS for Docker daemon communication and restrict API access. Use Docker network policies to control traffic between containers.

##### 5. Monitor and Log Container Activity
**Explanation:**
**Why:** Monitoring and logging container activity helps detect and respond to suspicious behavior or potential security incidents.
**How:** Use monitoring and logging tools to capture and analyze container activity. Integrate with centralized logging and monitoring solutions.

#### Implement one of these practices in a Dockerfile and provide the code.

**[click here to view the Docker file](Dockerfile-Memcached)**





### 2. Kubernetes Security Configuration (10 points)

#### Role-Based Access Control (RBAC)
**Description:**
 Kubernetes RBAC allows administrators to configure policies through the Kubernetes API to restrict access to resources and operations.

 #### Network Policies
 **Description:**
Network Policies in Kubernetes provide a way to enforce network segmentation and control the flow of traffic between pods. This helps in securing communication within the cluster by defining rules that specify which pods can communicate with each other.

#### Pod Security Policies (PSP)
**Description:**
Pod Security Policies (PSP) are a cluster-level resource in Kubernetes that control security-sensitive aspects of the pod specification. PSPs define a set of conditions that a pod must meet to be accepted into the system, gives the ability to control things like privileges, and filesystem usage.

#### Write a Kubernetes YAML configuration that includes securityContext settings for a pod.
**[click here for the Kubernetes file](kubernetes-securityContext.yml)**



### 3. IaaS Security Measures (10 points)

Infrastructure as a Service (IaaS) is a cloud computing service model that provides virtualized computing resources over the internet. It provides virtualized computing resources suchs as virtual machines, storage and networking. It allows users and organizations to scale resources to accomodate different workloads, and gives the ability to quickly provision and release workloads as needed.

While is does offer many advantages, users must be aware of the following security implications
- **Shared Responsibility Model:** Users should be aware of what features the cloud service provider is responisble for securing and what they are responsible for securing. Typically providers secure the physcial infrastructure, hypervisors and basic networking.
- **Data Security:** Data is now being held by the user but by the cloud service providoer. Users must understand how encryption, access controls, data backups are to be configured to ensure confidentiality, integrity, and availability of data.
- **Compliance & Legal:** Users must be ssure to choose providers can ensure compliance with their industry regulations and standards. 
