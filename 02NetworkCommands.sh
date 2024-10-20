ping -c 5 acpce.org

traceroute acpce.org

nslookup acpce.org

netstat -a

host acpce.org

hostname

ifconfig

arp

dig acpce.org

<< comment
1. **`ping -c 5 acpce.org`**  
   - **Description**: Sends 5 ICMP echo requests to the domain `acpce.org` to test the reachability of the host and measure round-trip time (latency). The `-c 5` option limits the number of packets to 5.
   
2. **`traceroute acpce.org`**  
   - **Description**: Traces the path packets take from your machine to the domain `acpce.org`, displaying the routers or hops along the way. It helps to diagnose network routing issues or identify delays.

3. **`nslookup acpce.org`**  
   - **Description**: Queries the DNS server to obtain the IP address associated with the domain `acpce.org`. It provides information about DNS resolution for that domain.

4. **`netstat -a`**  
   - **Description**: Displays a list of all active network connections and listening ports on your machine. The `-a` flag includes both TCP and UDP ports that are in use or waiting for connections.

5. **`host acpce.org`**  
   - **Description**: Performs a DNS lookup to find the IP address(es) associated with the domain `acpce.org`. It can also display information about mail servers (MX records) and other DNS records.

6. **`hostname`**  
   - **Description**: Displays the hostname of your computer. It can be used to show or set the system's network hostname.

7. **`ifconfig`**  
   - **Description**: Displays network interface configuration details, such as IP addresses, netmask, and MAC addresses. It's commonly used to configure or troubleshoot network interfaces.

8. **`arp`**  
   - **Description**: Displays or modifies the ARP (Address Resolution Protocol) table, which maps IP addresses to MAC addresses on your local network.

9. **`dig acpce.org`**  
   - **Description**: A DNS lookup utility that queries DNS servers for information about a domain, such as its IP address, mail servers, or name servers. It's more detailed than `nslookup` and used for diagnosing DNS issues.
comment