#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

# 1. Update package lists & install Git, Java, and Apache
apt-get update -y
apt-get install -y git openjdk-17-jdk apache2

# 2. Start and enable Apache
systemctl start apache2
systemctl enable apache2

# 3. Create custom user and set password
useradd -m -s /bin/bash ${custom_username}
echo "${custom_username}:${custom_password}" | chpasswd
usermod -aG sudo ${custom_username}

# 4. Enable Password Authentication
sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config

# 5. Restart SSH
systemctl restart sshd || systemctl restart ssh