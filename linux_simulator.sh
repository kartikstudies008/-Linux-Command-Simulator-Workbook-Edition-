#!/bin/bash
# ==========================================================
# Project : Linux Command Simulator (Animated Ultimate Edition)
# Author  : Kartik Sharma | MCA (CU)
# ==========================================================

LOGFILE="simulator_log.txt"
REPORTFILE="simulator_report.txt"
COMMAND_COUNT=0

# ---------- COLORS ----------
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
RESET=$(tput sgr0)
BOLD=$(tput bold)

# ---------- FUNCTIONS ----------
center_text() {
  term_width=$(tput cols)
  text="$1"
  printf "%*s\n" $(((${#text} + term_width) / 2)) "$text"
}

type_text() {
  text="$1"
  for (( i=0; i<${#text}; i++ )); do
    echo -n "${text:$i:1}"
    sleep 0.03
  done
  echo
}

loading() {
  spin='|/-\'
  for i in {1..20}; do
    printf "\r${CYAN}⏳ Loading ${spin:i%4:1}${RESET}"
    sleep 0.1
  done
  printf "\r${GREEN}✅ Ready!${RESET}\n"
}

pause() {
  echo
  read -p "${YELLOW}Press Enter to continue...${RESET}"
}

# ---------- WELCOME ANIMATION ----------
welcome_banner() {
  clear
  echo
  center_text "${MAGENTA}${BOLD}╔══════════════════════════════════════════════════════════════╗${RESET}"
  center_text "${YELLOW}${BOLD}🌟 WELCOME TO LINUX COMMAND SIMULATOR 🌟${RESET}"
  center_text "${MAGENTA}${BOLD}╚══════════════════════════════════════════════════════════════╝${RESET}"
  echo
  center_text "${CYAN}${BOLD}(Workbook Edition - Mini Project)${RESET}"
  center_text "${GREEN}Author: Kartik Sharma | MCA (CU)${RESET}"
  echo
  echo
  type_text "${BLUE}Initializing environment..."
  loading
  sleep 0.5
  clear
}

# ---------- SEPARATOR ----------
sep() {
  echo "${CYAN}══════════════════════════════════════════════════════════════════════${RESET}"
}

# ---------- MAIN MENU ----------
main_menu() {
  clear
  echo
  center_text "${MAGENTA}${BOLD}╔══════════════════════════════════════════════════════════════════════╗${RESET}"
  center_text "${YELLOW}${BOLD}🌟  LINUX COMMAND SIMULATOR  🌟${RESET}"
  center_text "${MAGENTA}${BOLD}╚══════════════════════════════════════════════════════════════════════╝${RESET}"
  echo
  center_text "${CYAN}${BOLD}(Workbook Edition - Mini Project)${RESET}"
  center_text "${GREEN}Author: Kartik Sharma | MCA (CU)${RESET}"
  echo
  sep
  center_text "${CYAN}${BOLD}Choose a Command to Simulate:${RESET}"
  echo
  echo "${YELLOW}"
  echo "╔══════════════════════════════════════════════════════════════════════╗"
  echo "║  1. List Files (ls)                                                 ║"
  echo "║  2. Show Current Directory (pwd)                                    ║"
  echo "║  3. Display File Content (cat)                                      ║"
  echo "║  4. Show Date and Time (date)                                       ║"
  echo "║  5. Display Calendar (cal)                                          ║"
  echo "║  6. Disk Partition Info (fdisk -l)                                  ║"
  echo "║  7. Show Mounted File Systems (df -h)                               ║"
  echo "║  8. Create User (sudo useradd)                                      ║"
  echo "║  9. Create Group (sudo groupadd)                                    ║"
  echo "║ 10. Change File Permissions (chmod)                                 ║"
  echo "║ 11. Change Ownership (chown)                                        ║"
  echo "║ 12. Search Text using grep                                          ║"
  echo "║ 13. Replace Text using sed                                          ║"
  echo "║ 14. Show System Info (uname -a)                                     ║"
  echo "║ 15. Show Current User (whoami)                                      ║"
  echo "║ 16. View Log File                                                   ║"
  echo "║ 17. Generate Report                                                 ║"
  echo "║ 18. Exit                                                            ║"
  echo "╚══════════════════════════════════════════════════════════════════════╝"
  echo "${RESET}"
  echo
}

# ---------- COMMAND EXECUTION ----------
run_command() {
  case $1 in
    1) loading; ls ;;
    2) loading; pwd ;;
    3) read -p "Enter filename: " f; loading; cat "$f" ;;
    4) loading; date ;;
    5) loading; cal ;;
    6) loading; sudo fdisk -l ;;
    7) loading; df -h ;;
    8) read -p "Enter username: " u; loading; sudo useradd "$u" ;;
    9) read -p "Enter group name: " g; loading; sudo groupadd "$g" ;;
    10) read -p "Enter filename: " f; read -p "Enter permission: " p; loading; chmod "$p" "$f" ;;
    11) read -p "Enter owner: " o; read -p "Enter file: " f; loading; sudo chown "$o" "$f" ;;
    12) read -p "Word to search: " w; read -p "File: " f; loading; grep --color=always "$w" "$f" ;;
    13) read -p "Old word: " o; read -p "New word: " n; read -p "File: " f; loading; sed -i "s/$o/$n/g" "$f" ;;
    14) loading; uname -a ;;
    15) loading; whoami ;;
    16) loading; tail -n 30 "$LOGFILE" ;;
    17) generate_report ;;
    *) echo "${RED}❌ Invalid choice.${RESET}" ;;
  esac
}

# ---------- REPORT GENERATOR ----------
generate_report() {
  loading
  echo "════════════════════════════════════════════" > "$REPORTFILE"
  echo "LINUX COMMAND SIMULATOR REPORT" >> "$REPORTFILE"
  echo "Generated on: $(date)" >> "$REPORTFILE"
  echo "Commands Executed: $COMMAND_COUNT" >> "$REPORTFILE"
  echo >> "$REPORTFILE"
  tail -n 20 "$LOGFILE" >> "$REPORTFILE"
  echo >> "$REPORTFILE"
  echo "Learning Outcomes:" >> "$REPORTFILE"
  echo "- Practiced Linux admin commands." >> "$REPORTFILE"
  echo "- Automated report and logging using Bash." >> "$REPORTFILE"
  echo "════════════════════════════════════════════" >> "$REPORTFILE"
  echo "${GREEN}✅ Report generated successfully: ${REPORTFILE}${RESET}"
}

# ---------- GOODBYE SCREEN ----------
goodbye() {
  clear
  echo
  center_text "${MAGENTA}${BOLD}╔══════════════════════════════════════════════════════════╗${RESET}"
  center_text "${YELLOW}${BOLD}🌟 THANK YOU FOR USING LINUX COMMAND SIMULATOR 🌟${RESET}"
  center_text "${MAGENTA}${BOLD}╚══════════════════════════════════════════════════════════╝${RESET}"
  echo
  type_text "${CYAN}Total Commands Executed: ${COMMAND_COUNT}${RESET}"
  echo
  type_text "${GREEN}${BOLD}Goodbye Kartik! See you again 👋${RESET}"
  echo
}

# ---------- MAIN PROGRAM ----------
welcome_banner

while true; do
  main_menu
  read -p "${BLUE}${BOLD}Enter your choice [1-18]: ${RESET}" choice
  echo
  if [[ "$choice" == "18" ]]; then
    goodbye
    break
  fi
  run_command "$choice"
  COMMAND_COUNT=$((COMMAND_COUNT + 1))
  pause
done
