# https://www.nsnam.org/releases/ns-allinone-3.43.tar.bz2

sudo apt update

sudo apt install g++ python3 python3-dev pkg-config sqlite3 cmake python3-setuptools git qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools gir1.2-goocanvas-2.0 python3-gi python3-gi-cairo python3-pygraphviz gir1.2-gtk-3.0 ipython3 openmpi-bin openmpi-common openmpi-doc libopenmpi-dev autoconf cvs bzr unrar gsl-bin libgsl-dev libgslcblas0 wireshark tcpdump sqlite sqlite3 libsqlite3-dev libxml2 libxml2-dev libc6-dev libc6-dev-i386 libclang-dev llvm-dev automake python3-pip libxml2 libxml2-dev libboost-all-dev

tar jxvf ns-allinone-3.43.tar.bz2

cd ns-allinone-3.43/

./build.py --enable-examples --enable-tests

cd ns-3.43/

./ns3 run hello-simulator

<< Theory
### NS3: A Modern Network Simulator

**NS3** is a discrete-event network simulator designed primarily for research and educational purposes. It is a successor to **NS2**, aiming to overcome the limitations of NS2 and provide more flexibility, scalability, and realism in network simulation. It allows users to simulate networks, test new protocols, and evaluate network performance under various conditions.

### Key Features of NS3:

1. **Object-Oriented Design**:
   - **NS3** is written in **C++** and provides **Python bindings** for script-based control. This enables users to write simulation scripts in both C++ and Python.
   - It uses object-oriented principles, making it modular, extensible, and easier to maintain and adapt to different simulation needs.

2. **Realistic Simulation**:
   - NS3 allows the simulation of realistic network models, incorporating **real-world protocols** and **network devices**. This includes Ethernet, Wi-Fi, LTE, and other wired and wireless technologies.
   - It supports **realistic IP addressing** and models, enabling users to simulate real-world network stacks more accurately than NS2.

3. **Packet-Level Simulation**:
   - NS3 is a **packet-level simulator**, meaning it tracks the movement of individual data packets through the simulated network. This fine-grained simulation allows detailed analysis of network protocols and traffic behaviors.

4. **Modular Protocol Stack**:
   - NS3 has a modular and flexible protocol stack, allowing easy simulation of various layers of the **OSI model**. It includes implementations of common protocols, such as **TCP**, **UDP**, **IPv4**, **IPv6**, and **IEEE 802.11 (Wi-Fi)**.
   - Users can mix and match protocols to experiment with different network configurations and study the interaction between layers.

5. **Support for Multiple Network Types**:
   - **NS3** can simulate **wired networks** (e.g., Ethernet, point-to-point links) and **wireless networks** (e.g., Wi-Fi, LTE, WiMAX, MANETs). This versatility makes it suitable for a wide range of applications, from home networks to large-scale mobile networks.
   - It also provides models for **satellite communication**, **vehicular networks**, and **sensor networks**.

6. **Emulation Mode**:
   - NS3 offers an **emulation mode**, where it can interact with real devices and networks. In this mode, NS3 can generate real traffic or integrate real applications, allowing hybrid simulations that combine both real and simulated components.

7. **Scalability**:
   - NS3 has been optimized for better performance and scalability than NS2. It can handle more complex and larger-scale simulations efficiently, making it suitable for research on large networks like datacenters, cloud environments, or wide area networks.

8. **Visualization and Tracing**:
   - NS3 provides powerful **logging** and **tracing** mechanisms that allow users to collect detailed statistics on network performance. It generates detailed trace files that can be analyzed to extract performance metrics like latency, throughput, packet loss, and jitter.
   - External tools like **NetAnim** (Network Animator) and **PyViz** can be used to visualize simulations, allowing users to visually inspect network behavior.

9. **Interoperability**:
   - NS3 can interact with **real network stacks** through **Direct Code Execution (DCE)**, enabling real protocol implementations (e.g., Linux kernel TCP/IP stack) to run within the simulation environment. This adds realism to protocol testing and evaluation.

### Differences Between NS2 and NS3:

- **Scripting Language**:
   - **NS2** uses **OTcl** (Object-oriented Tcl) for scripting, while **NS3** allows both **C++** and **Python** for simulation scripts, making NS3 more user-friendly and versatile.
  
- **Realism**:
   - **NS3** offers more realistic models for networks, including better support for real IP addresses and routing, making it more suitable for simulations that resemble actual internet scenarios.

- **Modularity**:
   - **NS3** is designed to be highly modular and extensible. The object-oriented architecture in **C++** allows for easier modification and integration of new models or protocols.

- **Performance**:
   - **NS3** is more efficient and scalable than **NS2**, enabling larger simulations and more complex network setups.

### NS3 Simulation Workflow:

1. **Network Topology Definition**:
   - Users define the network topology by creating objects like **nodes**, **devices**, and **channels**. These objects represent routers, hosts, links, and other network components.
   - For example, `ns3::Node` is used to create nodes, `ns3::NetDevice` is used to create network interfaces, and `ns3::Channel` is used to create communication links between devices.

2. **Protocol Configuration**:
   - Protocols such as **TCP**, **UDP**, **IP**, and others are attached to the nodes using helper classes (e.g., `TcpSocketFactory`, `Ipv4L3Protocol`). Users can configure the behavior of these protocols to suit their simulation needs.

3. **Traffic Generation**:
   - Traffic patterns can be generated using **application models** like `OnOffApplication` or `PacketSink`. These applications can simulate real-world behaviors such as HTTP traffic, FTP transfers, or constant bit rate (CBR) traffic.

4. **Simulation Time**:
   - The simulation runs based on a **discrete event scheduler**. Users define when events (such as packet transmission, link failures, etc.) should happen during the simulation. The simulator processes these events sequentially over time.

5. **Running the Simulation**:
   - Once the topology, protocols, and traffic are configured, the simulation is executed. During the run, NS3 collects data about the network behavior, which can be analyzed post-simulation.

6. **Result Analysis**:
   - NS3 generates **trace files** and **statistics** that record the events during the simulation. Tools like **Gnuplot**, **Excel**, or built-in analyzers are used to visualize and interpret the results, allowing researchers to extract performance metrics.

### Use Cases of NS3:

1. **Protocol Testing**:
   - NS3 is widely used to test and evaluate network protocols, particularly new or experimental versions of **TCP**, **UDP**, **routing algorithms**, and **wireless protocols**.

2. **Wireless Network Research**:
   - NS3 is popular for simulating **wireless networks**, including **Wi-Fi**, **LTE**, **5G**, and **MANETs** (Mobile Ad Hoc Networks). Researchers use it to evaluate signal interference, mobility, handoff algorithms, and energy efficiency.

3. **IoT and Sensor Networks**:
   - NS3 is used to study **Internet of Things (IoT)** and **wireless sensor networks** (WSNs), evaluating how protocols perform in low-power, low-bandwidth environments.

4. **Cybersecurity**:
   - Researchers simulate **network attacks**, **intrusion detection systems (IDS)**, and **security protocols** using NS3 to understand vulnerabilities and defense mechanisms.

5. **Data Center Networks**:
   - NS3 is used to model **large-scale data centers** and **cloud computing** environments, analyzing congestion, load balancing, and energy consumption.

6. **Vehicular Networks (VANETs)**:
   - NS3 supports vehicular networks, enabling the simulation of **V2X (Vehicle-to-Everything)** communication for studying intelligent transportation systems.

### NS3 Extensions:

- **Direct Code Execution (DCE)**: Allows users to run real-world network code (such as a Linux TCP/IP stack) within an NS3 simulation, offering more realism and a closer approximation to actual network behavior.
- **NetAnim**: A visualizer for NS3 simulations, providing a graphical representation of network nodes, links, and traffic flows.
- **Wireshark Integration**: NS3 supports packet capture in **PCAP format**, allowing users to analyze captured packets using Wireshark.

### Conclusion:

**NS3** is a powerful, flexible, and modern network simulator used for studying the behavior of computer networks. It offers a more realistic, modular, and scalable alternative to NS2, making it the preferred tool for network research. Its support for both wired and wireless simulations, coupled with its realistic protocol models and extensive analysis capabilities, makes it indispensable for network research in academia and industry.
Theory