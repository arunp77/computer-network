# Appendix A: Important Questions

---


## Part 1: Top Networking important Questions

1. **What is the difference between the OSI and TCP/IP models?**

**Answer:** OSI is a 7-layer theoretical model used for teaching and troubleshooting. TCP/IP is a 4-layer practical model upon which the Internet is actually built.

2. **Explain TCP vs. UDP.**

**Answer:** TCP is connection-oriented, guarantees delivery, and handles error recovery (used for Web, Email). UDP is connectionless, does not guarantee delivery, and is faster (used for Video streaming, VoIP).

3. **What happens when you type `google.com` into your browser and press Enter?**

**Answer:** (See Module 17 for full details). Briefly: DNS resolution → TCP Handshake → TLS Handshake → HTTP GET request → Server responds with HTML → Browser renders.

4. **What is a MAC address? How is it different from an IP address?**

**Answer:** A MAC address is a physical, burned-in address used for Layer 2 local communication (Switching). An IP address is a logical address used for Layer 3 global communication (Routing).

5. **Explain Subnetting and why it is used.**

**Answer:** Subnetting divides a large network into smaller, manageable chunks. It improves performance by reducing broadcast traffic and enhances security by isolating network segments.

6. **What is ARP (Address Resolution Protocol)?**

**Answer:** ARP translates a known Layer 3 IP address to an unknown Layer 2 MAC address so devices on the same local network can communicate.

7. **What is a Default Gateway?**

**Answer:** It is the router interface that devices on a local network use to send traffic to external networks (like the Internet).

8. **What is NAT (Network Address Translation)?**

**Answer:** NAT translates private, non-routable IP addresses on an internal network to a single public, routable IP address for internet access.

9. **Explain the TCP 3-Way Handshake.**

**Answer:** It establishes a TCP connection. 

1. Client sends SYN. 
2. Server responds with SYN-ACK. 
3. Client responds with ACK.

10. **What is a VLAN and why use it?**

**Answer:** A Virtual LAN logically segments a physical switch into multiple isolated networks. It improves security and reduces broadcast domains without needing separate physical switches.

11. **What is the difference between a Hub, Switch, and Router?**

**Answer:** A Hub (L1) broadcasts traffic everywhere. A Switch (L2) forwards traffic only to the specific MAC address. A Router (L3) forwards traffic between different IP networks.

12. **What is BGP?**

**Answer:** Border Gateway Protocol is the routing protocol of the Internet. It routes traffic between different Autonomous Systems (AS) based on policies and paths.

13. **What is a Firewall and how does it differ from an IPS?**

**Answer:** A firewall filters traffic based on rules (IPs, Ports). An IPS (Intrusion Prevention System) deeply inspects the packet payload for malicious signatures and blocks them.

14. **How does a VPN work?**

**Answer:** A VPN creates a secure, encrypted tunnel over a public network, allowing a remote user to securely access a private corporate network.

15. **What is the difference between HTTP and HTTPS?**

**Answer:** HTTP transmits data in plain text. HTTPS uses TLS/SSL to encrypt the data in transit, ensuring confidentiality and integrity.

*(Additional 85 questions omitted for brevity—focus your study on Routing Protocols, IPv6, Subnetting Math, and Security).*

---

## Part 2: Top Cloud Networking important Questions

16. **What is a VPC (Virtual Private Cloud)?**

**Answer:** A logically isolated virtual network within a public cloud provider where you launch your cloud resources.

17. **What is the difference between a Public Subnet and a Private Subnet?**

**Answer:** A public subnet has a route to an Internet Gateway (IGW). A private subnet does not and relies on a NAT Gateway for outbound internet access.

18. **Explain the difference between Security Groups and Network ACLs in AWS.**

**Answer:** Security Groups operate at the instance/VM level and are stateful. Network ACLs operate at the subnet level and are stateless.

19. **What is a NAT Gateway and why do you need it?**

**Answer:** It sits in a public subnet and allows resources in a private subnet to access the internet (e.g., for updates) without exposing them to incoming internet traffic.

20. **How do you connect two VPCs together?**

**Answer:** Using VPC Peering (for a 1-to-1 connection) or a Transit Gateway (for a hub-and-spoke connection of many VPCs).

21. **What is an Application Load Balancer (ALB) vs. Network Load Balancer (NLB)?**

**Answer:** ALB operates at Layer 7 (HTTP/HTTPS) and can route based on URL paths. NLB operates at Layer 4 (TCP/UDP) and handles millions of requests per second with ultra-low latency.

22. **How does a CDN work in the cloud?**

**Answer:** A CDN caches static content at edge locations globally. When a user requests content, it is served from the edge server closest to them, reducing latency.

23. **What is a VPC Endpoint?**

**Answer:** It allows private connection between your VPC and supported cloud services (like AWS S3) without traffic going over the public internet.

24. **Explain Service Discovery in a microservices architecture.**

**Answer:** Since containers/pods are ephemeral and their IPs change constantly, Service Discovery (often via an internal DNS or Service Mesh) dynamically keeps track of how services can reach each other.

25. **What is a Service Mesh?**

**Answer:** A dedicated infrastructure layer (using sidecar proxies) that handles East-West service-to-service communication, providing automatic TLS, retries, and observability.

---

## Part 3: Top Data Center Networking important Questions

26. **What is the difference between a 3-Tier Architecture and a Spine-Leaf Architecture?**

**Answer:** 3-Tier is hierarchical (Core/Aggregation/Access) and optimized for North-South traffic. Spine-Leaf is a modern, flat architecture optimized for heavy East-West (server-to-server) traffic.

27. **What is East-West traffic vs. North-South traffic?**

**Answer:** North-South is traffic entering or leaving the data center (user to server). East-West is traffic moving within the data center (server to server).

28. **What is a Top-of-Rack (ToR) switch?**

**Answer:** An Access layer switch physically located at the top of a server rack. All servers in that rack plug directly into the ToR switch.

29. **What is SAN (Storage Area Network)?**

**Answer:** A dedicated, high-speed network that provides access to consolidated block-level storage, making it appear as local drives to the servers.

30. **What is LACP (Link Aggregation Control Protocol)?**

**Answer:** A protocol used to bundle several physical network links into a single logical link to increase bandwidth and provide redundancy.

---
[Proceed to Appendices: Labs, Tools & Glossary](labs-tools-glossary.md)
