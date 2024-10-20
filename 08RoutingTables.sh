To manage the routing table and modify routes in Linux using the `netstat` and `route` commands, follow these steps. These commands allow you to view, add, and delete routes, and also change the default gateway.

### 1. **View Current Routing Table**

To view the current routing table, you can use the `netstat` or `route` command. While `netstat` is more comprehensive, `route` provides a simple way to view the routing table.

#### Using `netstat`:

```bash
netstat -rn
```

- The `-r` option tells `netstat` to show the routing table, and the `-n` option displays IP addresses and numbers rather than resolving hostnames and services.

#### Using `route`:

```bash
route -n
```

- This shows the routing table with the destination, gateway, genmask (subnet mask), and interface details.

#### Example Output:
```
Kernel IP routing table
Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
0.0.0.0         192.168.1.1     0.0.0.0         UG    100    0        0 eth0
192.168.1.0     0.0.0.0         255.255.255.0   U     0      0        0 eth0
```
- **0.0.0.0**: Default route (used when no other route matches).
- **UG**: U means the route is up, and G means it uses a gateway.
- **eth0**: The network interface associated with the route.

### 2. **Add a Route**

You can add a static route to a specific network or host using the `route` command.

#### Syntax:

```bash
sudo route add -net <network> netmask <netmask> gw <gateway> dev <interface>
```

For example, to add a route to the network `192.168.2.0/24` through the gateway `192.168.1.1` on interface `eth0`:

```bash
sudo route add -net 192.168.2.0 netmask 255.255.255.0 gw 192.168.1.1 dev eth0
```

You can also add a route to a specific **host**:

```bash
sudo route add -host 10.10.10.1 gw 192.168.1.1 dev eth0
```

- `-net`: Specifies that you're adding a network route.
- `-host`: Adds a route to a specific host.
- `gw`: Specifies the gateway.
- `dev`: The network interface (e.g., `eth0`, `wlan0`).

### 3. **Delete a Route**

To delete a route, you use the `route del` command with the same arguments as adding.

#### Syntax:

```bash
sudo route del -net <network> netmask <netmask> gw <gateway> dev <interface>
```

For example, to delete the route to the network `192.168.2.0/24`:

```bash
sudo route del -net 192.168.2.0 netmask 255.255.255.0 gw 192.168.1.1 dev eth0
```

You can also delete a route to a specific **host**:

```bash
sudo route del -host 10.10.10.1 gw 192.168.1.1 dev eth0
```

### 4. **Change the Default Gateway**

To change the default gateway, use the `route add` command with a destination of `0.0.0.0` (representing the default route).

#### Steps to Change Default Gateway:

1. **Delete the Existing Default Gateway**:

   First, you need to remove the existing default gateway. Run the following command:

   ```bash
   sudo route del default gw <current_gateway> dev <interface>
   ```

   For example, if the current default gateway is `192.168.1.1`:

   ```bash
   sudo route del default gw 192.168.1.1 dev eth0
   ```

2. **Add the New Default Gateway**:

   Next, add the new default gateway using the following command:

   ```bash
   sudo route add default gw <new_gateway> dev <interface>
   ```

   For example, to set `192.168.2.1` as the new default gateway:

   ```bash
   sudo route add default gw 192.168.2.1 dev eth0
   ```

#### Verify the Default Gateway:

You can check the routing table to ensure the new default gateway is in place:

```bash
route -n
```

In the output, the `0.0.0.0` entry should point to the new gateway.

---

### Notes:
- **`sudo`** is required for root privileges when modifying routes.
- The `route` command has been deprecated in some modern Linux distributions and replaced by the `ip` command. For example, to view the routing table with `ip`, you can use:
  ```bash
  ip route show
  ```
- For persistence across reboots, these routes need to be added to network configuration files, as these commands only modify the routing table temporarily.

This covers how to view, add, delete routes, and change the default gateway using `netstat` and `route` commands in Linux.