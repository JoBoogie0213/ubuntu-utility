#!/bin/bash

# Function to display the header
show_header() {
  clear
  echo -e "\e[36m====================================="
  echo -e "      Ubuntu Jailbreak Terminal      "
  echo -e "=====================================\e[0m"
}

# Function to perform the jailbreak actions
run_jailbreak() {
  echo -e "\e[33m[+] Disabling AppArmor...\e[0m"
  sudo systemctl stop apparmor
  sudo systemctl disable apparmor
  sleep 1

  echo -e "\e[33m[+] Disabling error reporting...\e[0m"
  sudo systemctl stop apport.service
  sudo systemctl disable apport.service
  sleep 1

  echo -e "\e[33m[+] Removing telemetry packages...\e[0m"
  sudo apt remove --purge popularity-contest ubuntu-report -y
  sleep 1

  echo -e "\e[33m[+] Unlocking full directory permissions...\e[0m"
  sudo chmod -R 777 /
  sleep 1

  echo -e "\e[33m[+] Removing snapd...\e[0m"
  sudo apt purge snapd -y
  sleep 1

  echo -e "\e[33m[+] Unlocking root account...\e[0m"
  sudo passwd -u root
  sleep 1

  echo -e "\e[33m[+] Giving user root-like permissions on system folders...\e[0m"
  sudo usermod -aG root $USER
  sleep 1

  echo -e "\e[33m[+] Disabling telemetry and data collection...\e[0m"
  sudo systemctl stop whoopsie
  sudo systemctl disable whoopsie
  sleep 1

  echo -e "\e[32m[✔] Jailbreak complete! You now have full controll!\e[0m"
}

# Main loop
show_header
while true; do
  echo -en "\e[36mType JAILBREAK to start or EXIT to quit: \e[0m"
  read input
  case "${input^^}" in
    JAILBREAK)
      run_jailbreak
      ;;
    EXIT)
      echo -e "\e[36mExiting... Goodbye!\e[0m"
      break
      ;;
    *)
      echo -e "\e[31mInvalid input. Please type JAILBREAK or EXIT.\e[0m"
      ;;
  esac
done
