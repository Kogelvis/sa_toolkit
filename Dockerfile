FROM blackarchlinux/blackarch
WORKDIR /root

RUN \
    echo 'trap "" 20' >> /etc/bash.bashrc && \
    pacman -Syu --noconfirm && \
    pacman -S --noconfirm amass httpx aquatone && \
    pacman -S --noconfirm seclists gobuster ffuf patator && \
    pacman -S --noconfirm nmap masscan gnu-netcat python && \
    pacman -S --noconfirm metasploit hydra && \
    pacman -S --noconfirm p7zip john mitmproxy && \
    pacman -S --noconfirm mariadb-clients sqlite sqlmap

ENV LANG=en_US.UTF-8
CMD ["/usr/bin/bash"]
