# System Administration Assignments

## **Table of Contents**
- [Introduction](#introduction)
- [Task 1: System Monitoring Setup](#task-1-system-monitoring-setup)
- [Task 2: User Management and Access Control](#task-2-user-management-and-access-control)
- [Task 3: Backup Configuration for Web Servers](#task-3-backup-configuration-for-web-servers)
- [Overall Report and Presentation](#overall-report-and-presentation)

---

## **Introduction**
This repository contains implementation details for three system administration tasks:

1. **System Monitoring Setup** 
2. **User Management and Access Control** 
3. **Backup Configuration for Web Servers**

Each task includes step-by-step implementation, configurations, relevant logs, and screenshots.

---

## **Task 1: System Monitoring Setup**

### **Objective**
To configure a monitoring system that ensures the development environment’s health, performance, and capacity planning.

### **Implementation Steps**
1. **Install Monitoring Tools**
   - Installed `htop` for real-time system performance tracking.
   - Used `df` and `du` for disk usage monitoring.
2. **Configure System Metrics Logging**
   - Created a script to log CPU, memory, and process usage.
   - Set up `cron` to run the script every 1 minute.
3. **Process Monitoring**
   - Identified resource-intensive processes
4. **Logging and Reporting**
   - Configured log output to system_monitor.log.
   - Implemented a reporting structure for periodic review.

### **Expected Output**
- Log files containing system performance snapshots.
  <img width="661" alt="image" src="https://github.com/user-attachments/assets/ec5cd13f-0bc5-4632-9328-e9f83e135c10" />

  <img width="947" alt="image" src="https://github.com/user-attachments/assets/bba47766-c399-44b3-bae3-e5b1a98d179f" />


- Screenshots of the monitoring setup in action.
- cron setup
 
  <img width="338" alt="image" src="https://github.com/user-attachments/assets/c9c27ef3-dc83-4932-b65e-65fe78e77636" />

---

## **Task 2: User Management and Access Control**

### **Objective**
To set up user accounts and configure secure access controls for new developers.

### **Implementation Steps**
1. **User Account Creation**
   - Created user accounts for **Sarah** and **Mike** using `useradd`.
   - Set up secure passwords using `passwd`.
2. **Directory Setup**
   - Created isolated working directories:
     - `/home/sarah/workspace`
     - `/home/mike/workspace`
   - Set permissions using `chown` and `chmod` to restrict access.
3. **Enforce Password Policies**
   - Configured password expiration and complexity using `chage` and `passwd`.

### **Expected Output**
- Confirmation of user creation and Screenshots of permission settings.
 
  <img width="469" alt="image" src="https://github.com/user-attachments/assets/bd11ee25-ba89-4019-8f1c-c287762638e2" />

- Verification of password policy enforcement.
  
  <img width="617" alt="image" src="https://github.com/user-attachments/assets/c194da91-7945-483f-a239-be73b8dfdac4" />


---

## **Task 3: Backup Configuration for Web Servers**

### **Objective**
To automate backups for Apache and Nginx web servers for data integrity and recovery.

### **Implementation Steps**
1. **Backup Script Development**
   - Created a backup script to archive the following:
     - **Apache:** `/etc/apache2/` and `/var/www/html/`
     - **Nginx:** `/etc/nginx/` and `/usr/share/nginx/html/`
   - Compressed the backup files with timestamped filenames.
2. **Cron Job Scheduling**
   - Scheduled backups using `cron` to run every **Sunday after 12:00 AM**.
3. **Backup Integrity Verification**
   - Implemented a check to list the contents of the compressed files after creation.
   - Logged verification results in backup_YYYY-MM-DD-HH-MM-SS.log.

### **Expected Output**
- Backup files stored in `/backups/`.
  
  <img width="618" alt="image" src="https://github.com/user-attachments/assets/e401e79d-5218-4cf6-9c5a-77a17b4a9650" />

- Cron job configuration output.

  <img width="386" alt="image" src="https://github.com/user-attachments/assets/c6931144-58a5-4b30-8c6f-cfe28c6d033b" />
  

- Verification log demonstrating backup integrity.

  <img width="631" alt="image" src="https://github.com/user-attachments/assets/c544d036-7188-4b97-837e-07426df8ccaf" />


---


### **How to Use This Repository**
1. Clone the repository:
   ```bash
   git clone https://github.com/Avinjay/Linux_assignment.git
   cd Linux_assignment
   ```
2. Review the scripts for monitoring, user management, and backups.
3. Execute scripts as needed following the documented steps.

---

### **Contributors**
- **Avinjay** (avinjaymewada25@gmail.com)

---

This README serves as a comprehensive guide for setting up and managing essential system administration tasks efficiently.

