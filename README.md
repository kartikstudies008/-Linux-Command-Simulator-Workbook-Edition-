# 🌟 **Linux Command Simulator (Workbook Edition - Mini Project)**

> **Author:** Kartik Sharma
> **Course:** MCA – Cloud Computing & DevOps
> **Subject:** Linux Administration Lab (25CAP-622)
> **Institute:** Chandigarh University
> **Session:** 2025

---

## 🧠 **Project Overview**

The **Linux Command Simulator** is an interactive and animated **Bash-based mini project** that simulates real Linux terminal commands in a colorful, menu-driven interface.
It helps beginners and students understand the functionality of essential Linux commands such as file management, user creation, system information, text processing, and more — all in a guided environment.

---

## ⚙️ **Key Features**

✅ **Animated Dashboard UI** — Beautifully styled with colors and borders
✅ **Menu-driven Interface** — Easy selection of Linux commands
✅ **Real Command Simulation** — Uses `ls`, `pwd`, `chmod`, `chown`, `grep`, `sed`, etc.
✅ **Logging System** — Every command executed is stored in a log file
✅ **Auto Report Generation** — Creates a formatted `simulator_report.txt`
✅ **Error Handling & Validation** — Safe input checks for files/users
✅ **Animated Loading & Centered Banner** — Gives a real terminal effect
✅ **Exit Summary Screen** — Displays total commands executed

---

## 📁 **Project Structure**

```
linux_command_simulator/
│
├── simulator.sh              # Main Bash Script
├── simulator_log.txt          # Auto-generated command log
├── simulator_report.txt       # Auto-generated activity report
└── README.md                  # Project documentation
```

---

## 🚀 **How to Run the Project**

### Step 1 — Clone or Copy

```bash
mkdir linux_command_simulator
cd linux_command_simulator
```

### Step 2 — Create Script File

Paste the final script code (simulator.sh) and save.

### Step 3 — Give Execute Permission

```bash
chmod +x simulator.sh
```

### Step 4 — Run Simulator

```bash
./simulator.sh
```

### Step 5 — Exit & Generate Report

Choose option **17** to generate a report
Choose option **18** to exit

---

## 🧩 **Menu Options**

| Option | Command    | Description                |
| -----: | ---------- | -------------------------- |
|      1 | `ls`       | List files and directories |
|      2 | `pwd`      | Show current directory     |
|      3 | `cat`      | Display file content       |
|      4 | `date`     | Show current date & time   |
|      5 | `cal`      | Display calendar           |
|      6 | `fdisk -l` | Disk partition info        |
|      7 | `df -h`    | Mounted file systems       |
|      8 | `useradd`  | Create user                |
|      9 | `groupadd` | Create group               |
|     10 | `chmod`    | Change file permissions    |
|     11 | `chown`    | Change file ownership      |
|     12 | `grep`     | Search text in file        |
|     13 | `sed`      | Replace text in file       |
|     14 | `uname -a` | Show system info           |
|     15 | `whoami`   | Show current user          |
|     16 | —          | View log file              |
|     17 | —          | Generate report            |
|     18 | —          | Exit simulator             |

---

## 🧾 **Sample Output Screenshot**

```
╔════════════════════════════════════════════════════════════╗
║         🌟 LINUX COMMAND SIMULATOR (WORKBOOK EDITION) 🌟     ║
╚════════════════════════════════════════════════════════════╝
 1. List Files (ls)
 2. Show Current Directory (pwd)
 ...
Enter your choice [1-18]:
```

---

## 🧠 **Learning Outcomes**

✅ Mastered Bash scripting and Linux automation
✅ Understood file permissions, ownership, and process management
✅ Implemented logging, redirection, and conditional statements
✅ Learned text processing with `grep` and `sed`
✅ Designed an interactive CLI application using shell functions

---

## 🧰 **Technologies Used**

* **Shell Scripting (Bash)**
* **Linux / RHEL / Ubuntu Terminal**
* **Text Processing Commands** (`grep`, `sed`)
* **System Utilities** (`df`, `fdisk`, `uname`)

---

## 🏁 **Conclusion**

This mini project successfully demonstrates automation and system management using Linux shell scripting.
It simulates a real Linux command-line interface with added visual elements and automation — making it both **educational** and **engaging** for students learning system administration.

---

## 💬 **Future Enhancements**

* Add a **voice assistant** using `espeak` for spoken feedback
* Include **color themes** (dark/light mode switch)
* Add **quiz mode** to test Linux knowledge
* Create a **web-based version** using Python Flask or Node.js

---

## 👨‍💻 **Author**

**Kartik Sharma**
MCA (Cloud Computing & DevOps)
Chandigarh University
📧 kartikstudies008@gmail.com

---

## 🏆 **License**

This project is for **educational purposes only** under the MCA course curriculum.
Free to use, modify, and learn from.

---

### 🌟 **"Automation is not just about saving time — it’s about learning how systems think."**

> — Kartik Sharma

---

### ✅ *Ready for submission!*

This `README.md` works perfectly for:

* 💼 College Viva / Practical File
* 🧠 GitHub Project Page
* 📘 PDF Project Report Appendix

---

Would you like me to make a **beautiful Markdown version with emojis and color highlights (for GitHub look)**, or a **Word/PDF version** formatted for your MCA submission file?
