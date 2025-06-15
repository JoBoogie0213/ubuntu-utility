#!/bin/bash

echo "🛡️ Starting Ubuntu Unjailbreak..."

# Restore sudo permissions
echo "🔧 Restoring sudo permissions..."
chown root:root /usr/bin/sudo
chmod 4755 /usr/bin/sudo
chmod 644 /etc/sudo.conf

# Re-enable AppArmor
echo "🔒 Enabling AppArmor..."
sudo systemctl enable apparmor
sudo systemctl start apparmor

# Re-enable error reporting
echo "🔔 Enabling error reporting..."
sudo systemctl enable apport.service
sudo systemctl start apport.service

# Restore telemetry settings (basic defaults)
echo "📡 Restoring basic telemetry..."
sudo apt install --reinstall ubuntu-report popularity-contest -y

# Reinstall snapd
echo "📦 Reinstalling snapd..."
sudo apt install --reinstall snapd -y

# Lock down system folders
echo "🚫 Re-securing system directories..."
sudo chmod -R o-rwx /root
sudo chmod -R o-rwx /etc/sudoers.d

# Disable root login
echo "👑 Disabling root account..."
sudo passwd -l root

echo "✅ Unjailbreak process complete! A reboot is recommended."

