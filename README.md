# Security Assessment toolkit

A docker image based on blackarch with the following tooling installed:

- amass
- aquatone
- exploitdb
- ffuf
- gnu-netcat
- gobuster
- httpx
- hydra
- john
- mariadb-clients
- masscan
- metasploit
- mitmproxy
- nmap
- p7zip
- patator
- peass
- python
- seclists
- sqlite
- sqlmap
- vim

# Installation

```
docker pull ghcr.io/kogelvis/sa_toolkit
mkdir ~/sa_toolkit_home
```

# Usage
```
docker run -v /home/<your_username>/sa_toolkit_home:/root --rm -ti --hostname blackarch --name blackarch -p 4440-4460:4440-4460 -p 8080:8080 -p 8081:8081 ghcr.io/kogelvis/sa_toolkit
```
