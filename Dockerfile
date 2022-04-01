FROM blackarchlinux/blackarch
WORKDIR /root

RUN \
    echo 'trap "" 20' >> /etc/bash.bashrc && \
    pacman -Syu --noconfirm && \
    pacman -S --noconfirm amass httpx aquatone \
    seclists gobuster ffuf patator nmap masscan \
    gnu-netcat python metasploit hydra p7zip john \
    mitmproxy p7zip john mitmproxy mariadb-clients \
    sqlite sqlmap vim exploitdb peass

ENV LANG=en_US.UTF-8
CMD ["/usr/bin/bash"]
