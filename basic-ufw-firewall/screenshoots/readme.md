After applying the firewall rules, I verified the configuration using sudo ufw status verbose. The output confirmed that port 80 (HTTP) and
port 21 (FTP) were denied, while 22 (SSH) and 443 (HTTPS) were allowed. This confirms that the firewall rules were successfully applied.
