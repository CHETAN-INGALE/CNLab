# http://sourceforge.net/projects/nsnam/files/allinone/ns-allinone-2.35/ns-allinone-2.35.tar.gz/download

tar zxvf ns-allinone-2.35.tar.gz 

sudo apt update
sudo apt install build-essential autoconf automake libxmu-dev gawk

sudo gedit /etc/apt/sources.list
# deb http://in.archive.ubuntu.com/ubuntu/ bionic main universe
sudo apt update

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3B4FE6ACC0B21F32
sudo apt update
sudo apt install gcc-4.8 g++-4.8

# @CC@ to be replaced with gcc-4.8
# @CPP@ to be replaced with g++-4.8
ns-allinone-2.35/Makefile.in
/home/student/ns-allinone-2.35/otcl-1.14/Makefile.in
nam-1.15/Makefile.in
xgraph-12.2/Makefile.in

# in line number 137, change the line erase to this-erase
ns-2.35/linkstate/ls.h

~/.bashrc

export PATH=$PATH:/home/student/ns-allinone-2.35/bin:/home/student/ns-allinone-2.35/tcl8.5.10/unix:/home/student/ns-allinone-2.35/tk8.5.10/unix
export LD_LIBRARY_PATH=/home/student/ns-allinone-2.35/otcl-1.14:/home/student/ns-allinone-2.35/lib


# Actual ns2 use
ns
nam
xgraph
# 1 2
# 3 4
# 5 6
# 6 7
# 8 9
# 10 11
# Ctrl + D

<< Theory
**NS2 (Network Simulator 2)** is a discrete event network simulator primarily used in research and academic environments to simulate and study the behavior of computer networks. It is a widely-used open-source tool for networking research, allowing users to simulate a wide range of network protocols, scenarios, and configurations. It supports both wired and wireless network simulations, and its extensive functionality makes it ideal for studying various types of networks and communication protocols.

### Key Features of NS2:

1. **Simulation of Different Protocols**:
   - NS2 supports a variety of **network protocols** such as TCP, UDP, HTTP, FTP, and routing protocols (e.g., AODV, DSDV, DSR). These protocols are implemented at different layers of the OSI and TCP/IP models, making NS2 useful for evaluating protocol performance.

2. **Support for Wired and Wireless Networks**:
   - NS2 can simulate both **wired** and **wireless** networks, making it versatile for many network types such as LANs, WANs, MANETs (Mobile Ad Hoc Networks), sensor networks, and satellite networks.

3. **Discrete Event Simulation**:
   - NS2 operates as a **discrete event simulator**, where network events (such as packet transmission, reception, or loss) occur at specific times and are processed in a sequential manner. Each event affects the overall network state.

4. **Simulation Language**:
   - The core simulation engine in NS2 is written in **C++**, and simulations are controlled through scripts written in **OTcl (Object-oriented Tool Command Language)**. This scripting mechanism allows users to easily define network topologies, protocols, and traffic models.

5. **Trace Files and Visualization**:
   - NS2 generates **trace files** that record events occurring during a simulation. These trace files can be analyzed to study metrics such as throughput, packet loss, delay, and more.
   - Visualization tools like **NAM (Network Animator)** can be used to visually depict the network simulation, showing packet flows, node movements, and interactions between network elements.

6. **Topology Definition**:
   - Users can define complex **network topologies** including routers, switches, links, hosts, and wireless nodes. NS2 supports a variety of link types such as duplex links (two-way communication) and simplex links (one-way communication).

7. **Customization**:
   - NS2 is highly **customizable**. Researchers can implement new network protocols or modify existing ones to suit their experiments. This flexibility allows NS2 to be adapted for a wide variety of network research projects.

### Applications of NS2:

- **Protocol Analysis**: Researchers can simulate different network protocols and compare their performance under varying network conditions (e.g., packet loss, latency, bandwidth).
- **Wireless Networks**: NS2 can be used to simulate **mobile networks**, **wireless sensor networks**, and **vehicular ad hoc networks** to study issues such as mobility, signal interference, and routing.
- **Congestion Control**: NS2 is often used to study TCP congestion control mechanisms and explore new methods for improving congestion handling in networks.
- **Network Security**: Simulations related to network attacks, intrusion detection, and security protocols can be modeled in NS2.
- **Energy Efficiency in Networks**: Particularly for wireless sensor networks, NS2 allows researchers to evaluate how different protocols and strategies affect the **energy consumption** of nodes.

### Workflow in NS2:

1. **Installation**: NS2 can be installed on Linux/Unix-based systems, though it can also run on Windows using Cygwin (a Unix-like environment for Windows).
   
2. **Writing Simulation Scripts**: Users create OTcl scripts that define the simulation, including:
   - **Network topology**: The number of nodes and how they are connected.
   - **Traffic models**: The data generation patterns, such as FTP, HTTP, or constant bit rate (CBR) traffic.
   - **Protocol configurations**: The network protocols in use (e.g., TCP or UDP).
   - **Timing**: The simulation start and stop times, and scheduling of specific events.

3. **Running Simulations**: Once the script is ready, it is executed in NS2. The results are stored in trace files and/or can be visualized in real-time using NAM.

4. **Analyzing Results**: After the simulation, the trace files are analyzed using tools like **AWK** or **Perl scripts** to extract performance metrics (e.g., throughput, delay, packet loss).

### Limitations of NS2:
- **Steep Learning Curve**: Due to its reliance on OTcl scripting and the complexity of network configurations, NS2 can have a steep learning curve, especially for beginners.
- **Limited Scalability**: NS2 can struggle with very large network simulations as it was not designed for massive scalability.
- **Old Architecture**: NS2 is an older tool, and while still useful, some features are outdated, and newer simulators like **NS3** have emerged with more modern architectures.

### Successor: NS3
NS2 has a successor, **NS3**, which addresses some of the limitations of NS2 and provides a more modern, scalable, and extensible simulation environment. **NS3** is written entirely in C++ with Python bindings for easier scripting and simulation control.

### Summary:
**NS2** is a powerful tool for network simulation, offering extensive support for a wide range of protocols and network types. It is widely used in the academic and research community for studying the behavior of networks and evaluating the performance of protocols in different scenarios. However, NS3 has largely replaced NS2 for more modern simulation needs.
Theory
