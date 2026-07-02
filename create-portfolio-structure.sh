#!/bin/bash
# ============================================================
# Script: create-portfolio-structure.sh
# Mục đích: Tạo toàn bộ cấu trúc thư mục CYBERSECURITY-PORTFOLIO
# Cách dùng:
#   1) Đặt file này vào trong thư mục repo đã clone về
#   2) chmod +x create-portfolio-structure.sh
#   3) ./create-portfolio-structure.sh
# ============================================================

set -e

echo "Đang tạo cấu trúc thư mục..."

# ---------- 01: Professional Profile ----------
mkdir -p "01-Professional-Profile"
touch "01-Professional-Profile/Professional-Statement.md"
touch "01-Professional-Profile/Resume.pdf"
touch "01-Professional-Profile/Skills.md"
touch "01-Professional-Profile/Career-Goals.md"
touch "01-Professional-Profile/Learning-Roadmap.md"

# ---------- 02: Certifications ----------
mkdir -p "02-Certifications/Google-Cybersecurity"
touch "02-Certifications/README.md"
touch "02-Certifications/Google-Cybersecurity/Certificate.md"
touch "02-Certifications/Google-Cybersecurity/Credential.pdf"
touch "02-Certifications/Google-Cybersecurity/Badge.png"
touch "02-Certifications/Future-Certifications.md"

# ---------- 03: Google Cybersecurity Certificate (8 courses) ----------
BASE="03-Google-Cybersecurity-Certificate"

mkdir -p "$BASE/Course-01-Foundations-of-Cybersecurity"
touch "$BASE/Course-01-Foundations-of-Cybersecurity/README.md"
touch "$BASE/Course-01-Foundations-of-Cybersecurity/Notes.md"
touch "$BASE/Course-01-Foundations-of-Cybersecurity/Key-Concepts.md"
touch "$BASE/Course-01-Foundations-of-Cybersecurity/Glossary.md"
touch "$BASE/Course-01-Foundations-of-Cybersecurity/Resources.md"

mkdir -p "$BASE/Course-02-Play-It-Safe"
touch "$BASE/Course-02-Play-It-Safe/README.md"
touch "$BASE/Course-02-Play-It-Safe/Security-Risk-Assessment.md"
touch "$BASE/Course-02-Play-It-Safe/NIST-CSF.md"
touch "$BASE/Course-02-Play-It-Safe/Controls.md"
touch "$BASE/Course-02-Play-It-Safe/Notes.md"

mkdir -p "$BASE/Course-03-Networks-and-Network-Security"
touch "$BASE/Course-03-Networks-and-Network-Security/README.md"
touch "$BASE/Course-03-Networks-and-Network-Security/OSI-Model.md"
touch "$BASE/Course-03-Networks-and-Network-Security/TCP-IP.md"
touch "$BASE/Course-03-Networks-and-Network-Security/Firewalls.md"
touch "$BASE/Course-03-Networks-and-Network-Security/VPN.md"
touch "$BASE/Course-03-Networks-and-Network-Security/Wireshark-Labs.md"

mkdir -p "$BASE/Course-04-Linux-and-SQL/Labs"
touch "$BASE/Course-04-Linux-and-SQL/README.md"
touch "$BASE/Course-04-Linux-and-SQL/Linux.md"
touch "$BASE/Course-04-Linux-and-SQL/Bash.md"
touch "$BASE/Course-04-Linux-and-SQL/SQL.md"
touch "$BASE/Course-04-Linux-and-SQL/Cheat-Sheet.md"
touch "$BASE/Course-04-Linux-and-SQL/Labs/.gitkeep"

mkdir -p "$BASE/Course-05-Assets-Threats-Vulnerabilities"
touch "$BASE/Course-05-Assets-Threats-Vulnerabilities/README.md"
touch "$BASE/Course-05-Assets-Threats-Vulnerabilities/Threat-Modeling.md"
touch "$BASE/Course-05-Assets-Threats-Vulnerabilities/Vulnerabilities.md"
touch "$BASE/Course-05-Assets-Threats-Vulnerabilities/CVE.md"
touch "$BASE/Course-05-Assets-Threats-Vulnerabilities/Risk-Assessment.md"

mkdir -p "$BASE/Course-06-Detection-and-Response"
touch "$BASE/Course-06-Detection-and-Response/README.md"
touch "$BASE/Course-06-Detection-and-Response/SIEM.md"
touch "$BASE/Course-06-Detection-and-Response/Splunk.md"
touch "$BASE/Course-06-Detection-and-Response/Chronicle.md"
touch "$BASE/Course-06-Detection-and-Response/Incident-Response.md"
touch "$BASE/Course-06-Detection-and-Response/Playbooks.md"

mkdir -p "$BASE/Course-07-Python/Scripts" "$BASE/Course-07-Python/Exercises"
touch "$BASE/Course-07-Python/README.md"
touch "$BASE/Course-07-Python/Python-Basics.md"
touch "$BASE/Course-07-Python/Automation.md"
touch "$BASE/Course-07-Python/Scripts/.gitkeep"
touch "$BASE/Course-07-Python/Exercises/.gitkeep"

mkdir -p "$BASE/Course-08-Prepare-for-Jobs"
touch "$BASE/Course-08-Prepare-for-Jobs/README.md"
touch "$BASE/Course-08-Prepare-for-Jobs/Portfolio.md"
touch "$BASE/Course-08-Prepare-for-Jobs/Resume.md"
touch "$BASE/Course-08-Prepare-for-Jobs/Interview.md"
touch "$BASE/Course-08-Prepare-for-Jobs/Career-Preparation.md"

# ---------- 04: Labs ----------
mkdir -p "04-Labs/Linux" "04-Labs/SQL" "04-Labs/Wireshark" "04-Labs/tcpdump" "04-Labs/Splunk" "04-Labs/Chronicle"
touch "04-Labs/Linux/.gitkeep" "04-Labs/SQL/.gitkeep" "04-Labs/Wireshark/.gitkeep"
touch "04-Labs/tcpdump/.gitkeep" "04-Labs/Splunk/.gitkeep" "04-Labs/Chronicle/.gitkeep"

# ---------- 05: Projects ----------
mkdir -p "05-Projects/Security-Audit" "05-Projects/Incident-Response" "05-Projects/Network-Analysis" "05-Projects/Python-Automation" "05-Projects/Risk-Assessment"
for d in "05-Projects/Security-Audit" "05-Projects/Incident-Response" "05-Projects/Network-Analysis" "05-Projects/Python-Automation" "05-Projects/Risk-Assessment"; do
  touch "$d/README.md"
done

# ---------- 06: Scripts ----------
mkdir -p "06-Scripts/Python" "06-Scripts/Bash" "06-Scripts/PowerShell"
touch "06-Scripts/Python/.gitkeep" "06-Scripts/Bash/.gitkeep" "06-Scripts/PowerShell/.gitkeep"

# ---------- 07: Writeups ----------
mkdir -p "07-Writeups/Vulnerability-Analysis" "07-Writeups/Incident-Reports" "07-Writeups/Case-Studies"
touch "07-Writeups/Vulnerability-Analysis/.gitkeep" "07-Writeups/Incident-Reports/.gitkeep" "07-Writeups/Case-Studies/.gitkeep"

# ---------- 08: Resources ----------
mkdir -p "08-Resources/Cheat-Sheets" "08-Resources/Commands"
touch "08-Resources/Cheat-Sheets/.gitkeep" "08-Resources/Commands/.gitkeep"
touch "08-Resources/Books.md" "08-Resources/Websites.md" "08-Resources/Tools.md"

echo "Hoàn tất! Cấu trúc thư mục đã được tạo."
echo "Tiếp theo, chạy:"
echo "  git add ."
echo "  git commit -m \"Khởi tạo cấu trúc portfolio\""
echo "  git push origin main"
