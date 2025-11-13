# Script Documentation - Maintenance and Backup Script

**File:** script.sh  

---

This script performs **automated maintenance** at musf4rfits.site.  
It ensures that:
  1. A **backup** of all website files in `/var/www/html` is created with timestamps.  
  2. The **Apache2 server’s status** is checked to confirm it’s running.  
  3. The website’s **online accessibility (HTTP 200 OK)** is verified.  
  4. A full **log file** is generated (`maintenance_log.txt`) that records every check.

---
The script:  
- Provides a **single-command maintenance solution** (`./script.sh`).  
- Is useful for quickly diagnosing whether the website is online and Apache is running — without needing to open the browser.  
- Demonstrates practical automation on a production Linux web server.

---

## To Run
Simply Upload `script.sh` to the home directory on your EC2 instance:
   ```bash  
   scp -i "musab-key.pem" script.sh ubuntu@[YOUR_EC2_PUBLIC_IP]:/home/ubuntu/
