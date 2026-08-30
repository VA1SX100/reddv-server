# RedDV Server

**RedDV Server** is an integrated multi-mode radio server platform designed for amateur radio experimentation, learning, research, and technical development.

It brings multiple digital and analog radio systems together in a unified server environment, making it easier to deploy and manage multi-mode amateur radio infrastructure.

## Supported Modes

RedDV Server integrates support for:

* **DMR**
* **P25**
* **NXDN**
* **YSF / C4FM**
* **D-Star**
* **FM**
* **MPT1327**

The project aims to provide amateur radio enthusiasts with a simple and accessible platform for building, studying, and experimenting with multi-mode radio networks.

---

# Open Source Acknowledgements

RedDV Server is built upon and integrates a number of open-source projects developed by the amateur radio community.

We would especially like to express our sincere appreciation to:

### Jonathan Naylor (G4KLX)

Creator and maintainer of **MMDVM** and many related digital voice projects.

His work has made an enormous contribution to the amateur radio digital voice ecosystem and has enabled countless hotspots, repeaters, gateways, and experimental radio systems around the world.

### HBLink Developers and Contributors

Special thanks to the developers and contributors of **HBLink** for their work on open-source DMR networking and server infrastructure.

We also thank all developers, maintainers, contributors, testers, and members of the amateur radio community whose open-source work has contributed directly or indirectly to this project.

**Without these projects and the people behind them, platforms such as RedDV Server would not be possible.**

RedDV does not claim ownership of third-party open-source software included with or used by this project.

Each third-party component remains subject to its respective copyright notices, licenses, and terms.

Please respect the licenses and copyrights of all upstream projects.

---

# Deployment Requirements

## Hardware Requirements

Recommended minimum server configuration:

| Component             | Requirement             |
| --------------------- | ----------------------- |
| **CPU**               | x86_64, 2 cores or more |
| **Memory**            | 2 GB RAM or more        |
| **Storage**           | 40 GB or more           |
| **Network Bandwidth** | 2 Mbps or higher        |

Higher specifications are recommended for public servers or deployments handling a large number of connected nodes and simultaneous voice streams.

### Network Traffic

For small deployments, a network connection with at least **2 Mbps** of bandwidth is recommended.

For public servers or servers with potentially high traffic, a VPS or cloud server with **traffic-based billing** may be more economical than purchasing a high fixed-bandwidth plan.

Actual bandwidth and traffic consumption depend on factors including:

* Number of connected nodes
* Number of simultaneous calls
* Enabled radio modes and protocols
* Monitoring services
* Logging
* Web management services
* Other enabled features

---

## Software Requirements

Supported operating systems:

* **Ubuntu Server 22.04 LTS x86_64**
* **Ubuntu Server 24.04 LTS x86_64**

A clean Ubuntu Server installation is recommended.

Other Linux distributions or CPU architectures may work, but are not officially tested unless otherwise stated.

---

# One-Click Installation

For **x86_64 Ubuntu Server 22.04 / 24.04**, RedDV Server can be installed with a single command:

```bash
 wget -qO- https://auth-static.reddv.uk/releases/latest/install.sh | sudo bash
```

The installation script will automatically install and configure the required RedDV Server components.

After installation is complete, open the RedDV Server management interface in your browser:

```text
http://SERVER_IP:8080
```

Replace `SERVER_IP` with the IP address of your RedDV Server.

For example:

```text
http://192.168.1.100:8080
```

or, for a public server:

```text
http://YOUR_PUBLIC_IP:8080
```

## Default Administrator Account

The default administrator credentials are:

```text
Username: admin
Password: reddv1029
```

> **Security Notice:** Please change the default administrator password immediately after your first login.

If the management interface cannot be reached, make sure that **TCP port 8080** is allowed by your server firewall and, when using a cloud/VPS provider, by the corresponding security group or firewall rules.

---

# Intended Use

RedDV Server is intended primarily for:

* Amateur radio
* Education
* Technical research
* Radio protocol experimentation
* Digital voice experimentation
* Software development
* Radio networking research
* Personal and community amateur radio projects

The project is intended to provide an accessible platform for amateur radio enthusiasts to study and experiment with digital voice technologies, radio gateways, repeaters, trunking technologies, networking protocols, and multi-mode communication systems.

We encourage users to:

* Learn and experiment responsibly.
* Follow local amateur radio regulations.
* Respect frequency allocations and local band plans.
* Avoid causing harmful radio interference.
* Respect the licenses and copyrights of upstream projects.
* Contribute improvements back to the open-source community whenever possible.

---

# Disclaimer

**RedDV Server is provided for amateur radio, educational, experimental, research, and technical exchange purposes.**

Users are solely responsible for ensuring that their deployment and operation of this software complies with all applicable laws, regulations, amateur radio licensing requirements, frequency allocations, band plans, network policies, and other requirements in their country or region.

Depending on local regulations, operating radio transmitters, repeaters, gateways, trunked radio systems, interconnected radio networks, or certain frequencies may require an appropriate license, authorization, or permission.

**Do not operate radio equipment, frequencies, networks, or services for which you are not authorized.**

The RedDV project and its contributors do not provide authorization to operate any radio service and cannot guarantee that a particular configuration or use of this software is legal in every jurisdiction.

RedDV Server may include, integrate, distribute, interact with, or depend upon third-party and open-source software. Such software remains the property of its respective authors and copyright holders and is governed by its respective licenses.

Users and distributors of RedDV Server are responsible for complying with all applicable third-party software licenses.

This software is provided **"AS IS"**, without warranty of any kind, express or implied.

To the maximum extent permitted by applicable law, the RedDV project, its authors, maintainers, and contributors shall not be responsible for any direct or indirect loss, equipment damage, service interruption, radio interference, regulatory violation, data loss, network disruption, or other consequences arising from the installation, configuration, modification, deployment, or use of this software.

By installing, deploying, modifying, or using RedDV Server, you acknowledge that you are responsible for the configuration and operation of your own system.

---

# Responsible Operation

Please use RedDV Server responsibly and help maintain a healthy amateur radio community.

**Enjoy experimenting, keep learning, respect the spectrum, and support open source.**

— **RedDV Project**

