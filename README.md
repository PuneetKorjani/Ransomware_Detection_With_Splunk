# Ransomware_Detection_With_Splunk
This repository contains a ransomware simulation project designed for educational and detection purposes. It demonstrates how ransomware-like activity can be detected and monitored using Splunk SIEM and SPL queries, without harming real user data.


# Simulate-Ransomware

**Simulate-Ransomware** is an **educational project** that simulates ransomware activity in a safe environment. It demonstrates how ransomware-like behavior can be detected using **Splunk SIEM** and **SPL queries** without harming real files.  

> ⚠️ **Note:** This project uses dummy files and is for **learning purposes only**. Do not run on real or sensitive data.

---

## Features

- Simulates ransomware by **renaming files** in a safe folder (`C:/confidential_data`)  
- Tracks script execution using **PowerShell logs**  
- Splunk dashboards for monitoring:  
  - Panel 1: Shows before/after filenames  
  - Panel 3: Script execution events (`EventCode=4104`)  
  - Panel 3: Alerts if >20 files modified in 1 minute  

---


