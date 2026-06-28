#!/bin/bash
echo "Configuring UFW Firewall....."
sudo ufw --force enable
sudo ufw allow ssh
sudo ufw deny http
sudo ufw allow https
sudo ufw deny ftp
echo "current firewall rules"
sudo ufw status verbose
