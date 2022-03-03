HI Steven, How are you?

Automated ELK Stack Deployment
The files in this repository were used to configure the network depicted below.
Note: The following image link needs to be updated. Replace diagram_filename.png with the name of your diagram image file.
 
These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.
•	TODO: filebeat-playbook.yml
This document contains the following details:
•	Description of the Topology
•	Access Policies
•	ELK Configuration
o	Beats in Use
o	Machines Being Monitored
•	How to Use the Ansible Build
Description of the Topology
The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.
Load balancing ensures that the application will be highly efficient, in addition to restricting access to the network.
•	TODO: Load balancers are an additional layer of protection to the firewall to prevent unauthorized traffic from accessing the web machine, help prevent dDOS attacks, and minimizes the downtime if one server goes down. The main advantage of a jump box is to act as an intermediary between the internet and the web machines by adding an additional layer of protection and further restricting the ports that can access the web machines.  
Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the log events and system services.
•	TODO: What does Filebeat watch for? Log events
•	TODO: What does Metricbeat record? Metrics from OS and system services
The configuration details of each machine may be found below. Note: Use the Markdown Table Generator to add/remove values from the table.
Name	Function	IP Address	Operating System
Jump Box	Gateway	10.0.0.4	Linux
Web-1	Webserver	10.0.0.5	Linux
Web-2	Webserver	10.0.0.6	Linux
Web-3	Webserver	10.0.0.7	Linux
Elk-Server	ELK Server	10.1.0.4	Linux
Access Policies
The machines on the internal network are not exposed to the public Internet.
Only the jump box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses: (ELK Server has internet access restricted to port 5601)
•	TODO: 67.191.215.55
Machines within the network can only be accessed by jump box.
•	TODO: Which machine did you allow to access your ELK VM? Jump box What was its IP address? Public 52.255.138.42 Private 10.0.0.4
A summary of the access policies in place can be found in the table below.
Name	Publicly Accessible	Allowed IP Addresses
Jump Box	Yes, only by SSH port 22	67.191.215.55
Web-1	No	10.0.0.4
Web-2	No	10.0.0.4
Web-3	No	10.0.0.4
Elk Server	Yes, only port 5601	 67.191.215.55
		
Elk Configuration
Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
•	TODO: What is the main advantage of automating configuration with Ansible? Ansible can be run from the command line without requiring configuration files for simple tasks such as services, updates, and reboots. Ansible also makes deploying multiple simultaneous machines easier.
The playbook implements the following tasks:
•	Install Docker
•	Install pip3
•	Install Docker Python Module
•	Increase Virtual Memory
•	download and launch a docker elk container
•	Enable service docker on boot
The following screenshot displays the result of running docker ps after successfully configuring the ELK instance.
 
Note: The following image link needs to be updated. Replace docker_ps_output.png with the name of your screenshot image file.
Target Machines & Beats
This ELK server is configured to monitor the following machines:
•	10.0.0.5 (Web-1), 10.0.0.6 (Web-2), 10.0.0.7 (Web-3)
We have installed the following Beats on these machines:
•	Filebeat and Metricbeat
These Beats allow us to collect the following information from each machine:
•	Filebeats monitors log files and log events.  Ex. Apache log files Metricbeats moitors system services and provides metrics. Example CPU Usage and uptime
Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned:
SSH into the control node and follow the steps below:
•	Copy the configuration file to /etc/ansible/files.
•	Update the configuration file to include the IP address of the ELK machine on line 1106 and 1806.
•	Run the playbook, and navigate to Elk Server to check that the installation worked as expected.
TODO: Answer the following questions to fill in the blanks:
•	Which file is the playbook? filebeat-playbook.yml  metricbeat-playbook.yml Where do you copy it?/etc/ansible/roles
•	Which file do you update to make Ansible run the playbook on a specific machine? /etc/ansible/hosts How do I specify which machine to install the ELK server on versus which to install Filebeat on? Within the hosts file, [webservers] specify the IP addresses of the webservers and [elk] specifies the IP address of the ELK server.  You must create your playbook to include the respective host [] that you are deploying to.
•	_Which URL do you navigate to in order to check that the ELK server is running? Elk Server (http://ELK_VM_PublicIP:5601)
As a Bonus, provide the specific commands the user will need to run to download the playbook, update the files, etc.
![image](https://user-images.githubusercontent.com/100813514/156473945-276b9473-e2c1-4362-9e18-d82c6710dac0.png)
