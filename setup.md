# Cloud Server Setup Guide for musf4rfits.site

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


## Step 2: Update system
1. Run the following commands in the terminal:
   sudo apt update  
   sudo apt upgrade -y  
(Ensuring all packages are up to date before installing Apache.)


## Step 3: Install Apache2 Web Server
1. Run the following commands in the terminal:
   sudo apt install apache2 -y  
   sudo systemctl start apache2  
   sudo systemctl enable apache2  
2. Visit instance IP in a web browser.
   https://[IP]


## Step 4: Configuring Firewall
1. Enable and allow Apache traffic through UFW (Uncomplicated Firewall):
   sudo ufw allow 'Apache Full'  
   sudo ufw enable  
   sudo ufw status  


## Step 5. Uploading Website Files
1. Navigate to web directory:
   cd /var/www/html
2. Remove default Apache welcome file:
   sudo rm index.html
3. Clone GitHub repository and copy website files:
   sudo apt install git -y  
   sudo git clone https://github.com/musabundre/ICT171-Cloud-Server-Project.git temp  
   sudo cp -r temp/code/* /var/www/html/  
   sudo chown -R www-data:www-data /var/www/html  
   sudo systemctl restart apache2  


