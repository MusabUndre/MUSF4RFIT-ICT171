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
