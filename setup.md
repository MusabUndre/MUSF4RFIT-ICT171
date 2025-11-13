# Cloud Server Setup Guide for musf4rfits.site

___________________________________________________________

## Step 1: Launching EC2 Instance
1. Log into **AWS Management Console**.  
2. Go to **EC2 -> Launch Instance**.  
3. Choose:  
   - **AMI:** Ubuntu Server 22.04 LTS  
   - **Instance Type:** t3.micro  
   - **Key Pair:** musab-key.pem (for SSH access)
4. Under **Security Group**, allow:
   - Port 22 (SSH)
   - Port 80 (HTTP)
   - Port 443 (HTTPS)
5. Launch instance.  
6. Connect to instance:  
   bash  
   ssh -i "musab-key.pem" ubuntu@[ip]

___________________________________________________________

## Step 2: Update system
1. Run following commands in the terminal:  
   sudo apt update  
   sudo apt upgrade -y  
(Ensuring all packages are up to date before installing Apache.)

___________________________________________________________

## Step 3: Install Apache2 Web Server
1. Run the following commands in the terminal:  
   sudo apt install apache2 -y  
   sudo systemctl start apache2  
   sudo systemctl enable apache2  
2. Visit instance IP in a web browser.  
   http://[IP]  
   (Default Apache2 welcome page, if successful)  

___________________________________________________________

## Step 4: Configuring Firewall
1. Enable and allow Apache traffic through UFW (Uncomplicated Firewall):  
   sudo ufw allow 'Apache Full'  
   sudo ufw enable    
   sudo ufw status  

___________________________________________________________

## Step 5: Uploading Website Files
1. Navigate to web directory:  
   cd /var/www/html
2. Remove default Apache welcome file:  
   sudo rm index.html
3. Clone GitHub repository and copy website files:  
   sudo apt install git -y  
   sudo git clone https://github.com/MusabUndre/MUSF4RFIT-ICT171.git temp  
   sudo cp -r temp/code/* /var/www/html/  
   sudo chown -R www-data:www-data /var/www/html  
   sudo systemctl restart apache2  
4. Test again in browser:  
   http://[IP]  
5. Website should be accessible.

___________________________________________________________

## Step 6: Connecting Domain
1. Log in to GoDaddy account.  
2. Go to My Products → musf4rfits.site → DNS Management.  
3. Add or edit records:  
   | Type  | Name | Value            | TTL     |
   |-------|------|------------------|---------|
   | A     | @    | [IP]             | Default |
   | CNAME | www  | musf4rfits.site  | Default |
4. Save changes.  
5. Once active, test domain:  
   http://musf4rfits.site  

___________________________________________________________

## Step 7: Enabling HTTPS (SSL Certificate)
1. Use Let’s Encrypt (Certbot) to install free SSL.  
   sudo apt install certbot python3-certbot-apache -y  
   sudo certbot --apache  
2. During setup:  
   i) Enter email.  
   ii) Agree to the terms.  
   iii)Select both musf4rfits.site and www.musf4rfits.site.  
3. Certbot will automatically:  
   Edit Apache configuration.  
   Enable HTTPS redirection.  
4. Test in browser:  
   https://musf4rfits.site  
   (Notice a secure padlock icon.)

___________________________________________________________

## Step 8: Apache Configuration Summary
1. Apache configuration file location:  
   /etc/apache2/sites-available/musf4rfits.conf
2. Enable configuration and reload Apache:  
   sudo a2ensite musf4rfits.conf  
   sudo a2dissite 000-default.conf  
   sudo systemctl reload apache2

___________________________________________________________

## Step 9: Testing and Verification
1. Check Apache service status:  
   sudo systemctl status apache2  
2. Confirm website works on:  
   http://musf4rfits.site  
   https://musf4rfits.site

___________________________________________________________

## Step 10: Creating Backup Script
1. Create file called script.sh in home directory:  
   nano ~/script.sh
2. Run following code:  
   #!/bin/bash  
   timestamp=$(date +"%Y%m%d_%H%M%S")  
   backup_dir="/home/ubuntu/backup"  
   mkdir -p $backup_dir  
   tar -czvf $backup_dir/website_backup_$timestamp.tar.gz /var/www/html  
   echo "Backup completed at $timestamp"  
3. Make executable:  
   chmod +x script.sh  
4. Run script:  
   ./script.sh  
A Backup of the website files will then be created in /home/

___________________________________________________________

## Step 11: Final Site Verification
1. Check for full functionality of site:  
   Visit https://musf4rfits.site  
2. Confirm:  
   i) Website loads correctly  
   ii) SSL is active  
   iii) Domain resolves properly
   iv) Apache service is active  
3. If all checks pass, deployment is complete.

___________________________________________________________
