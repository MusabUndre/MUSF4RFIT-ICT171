# Apache, DNS, and SSL Configuration for musf4rfits.site

## Apache Virtual Host Configuration
1. Configuration file location:  
   /etc/apache2/sites-available/musf4rfits.conf  
2. File contents:  
   <VirtualHost *:80>  
     ServerAdmin admin@musf4rfits.site  
     ServerName musf4rfits.site  
     ServerAlias www.musf4rfits.site  
     DocumentRoot /var/www/html  

     ErrorLog ${APACHE_LOG_DIR}/error.log
     CustomLog ${APACHE_LOG_DIR}/access.log combined
   </VirtualHost>  
3. Enable site and disable default Apache page:  
  sudo a2ensite musf4rfits.conf  
  sudo a2dissite 000-default.conf  
  sudo systemctl reload apache2  


## GoDaddy DNS Configuration  
| Record Type | Name | Value              | Description                             |
|-------------|------|--------------------|-----------------------------------------|
| A           | @    | [IP]               | Points main domain to EC2 instance      |
| CNAME       | www  | musf4rfits.site    | Redirects www to root domain            |
3. Once saved, wait 15–30 minutes for DNS propagation.
4. To test DNS resolution:  
   ping musf4rfits.site


## SSL/TLS Certificate Configuration
1. Use Let’s Encrypt (Certbot) to secure website with HTTPS.  
2. Install Certbot:  
  sudo apt install certbot python3-certbot-apache -y  
3. Generate and install the SSL certificate:  
  sudo certbot --apache  
3. During prompt:
  i) Enter email address  
  ii) Agree to terms  
  iii) Select both musf4rfits.site and www.musf4rfits.site  
  iv) Allow Certbot to redirect all HTTP → HTTPS  
4. Certificate files are stored at:  
  /etc/letsencrypt/live/musf4rfits.site/  
5. Check renewal status:  
  sudo certbot renew --dry-run
