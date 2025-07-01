Ubuntu Utility is a tool designed for educational purposes to demonstrate system access, management, and customization on Ubuntu virtual machines (VMs).

⚠️ Disclaimer: This tool is for educational use only. Do not use it on production systems. The creator is not responsible for any damage caused by misuse of this tool.

Features
Simulated “jailbreak” of Ubuntu (grants elevated permissions, removes certain restrictions)

Option to run an unjailbreak / recovery script

Educational example of managing services, permissions, and telemetry on Ubuntu

Designed to be run in virtualized environments (e.g., VirtualBox)

Usage
Clone or download the repository:


git clone https://github.com/JoBoogie0213/ubuntu-utility.git
cd ubuntu-utility
Run the tool (example):

c
hmod +x ubuntu_access_tool.sh
./ubuntu_access_tool.sh
To attempt recovery (unjailbreak):


chmod +x ubuntu_recovery_tool.sh
./ubuntu_recovery_tool.sh
License
This project is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International (CC BY-NC-ND 4.0).
You may link to this project, but you may not reuse the code in your own projects or claim it as your own.

Notes
Tested in Ubuntu VM environments only.

Not recommended for real systems.

Always make VM snapshots before running!
