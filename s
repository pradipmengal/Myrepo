Step 1: Update and Upgrade Your System
Begin by updating your server’s package lists and upgrading any existing packages to ensure everything is current.
Run the following command:
sudo apt update && apt upgrade -y 
Step 2: Add the OpenVPN Repository
OpenVPN’s software repository makes it easy to install and update. Start by adding the repository to your sources list.
Run:
echo "deb [signed-by=/etc/apt/keyrings/openvpn-as.gpg.key] http://as-repository.openvpn.net/as/debian $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/openvpn-as.list
This command adds the OpenVPN Access Server repository to your list of software sources, making it easier to install and manage OpenVPN updates.
Step 3: Download and Add the OpenVPN Public Key
To ensure the packages from this repository are trusted, you need to add the public key.
Run the following command:
wget --quiet -O - https://as-repository.openvpn.net/as-repo-public.gpg | sudo tee /etc/apt/keyrings/openvpn-as.gpg.key

This command downloads the public key and saves it to the keyrings folder, verifying the packages before installation.
Step 4: Install Additional Packages
The following command installs essential packages required to work with HTTPS repositories:
sudo apt install apt-transport-https ca-certificates
Step 5: Update the Package List Again
After adding the OpenVPN repository and key, update your package list to ensure the new repository is included:
sudo apt update
Step 6: Install OpenVPN Access Server
Now that everything is set up, you can install the OpenVPN Access Server with the following command:
sudo apt install -y openvpn-as
Step 7: Access the OpenVPN Admin Web Interface
With the installation complete, you can manage OpenVPN settings through its web-based admin panel. Open a web browser and navigate to:
https://your_server_ip_or_domain_name:943/admin 
Replace your_server_ip_or_domain_name with your actual server IP or domain name. When you access this page, log in using the default admin credentials (typically, the initial admin username is "openvpn" with a system-generated password that you can reset).
