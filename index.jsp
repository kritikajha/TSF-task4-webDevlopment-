<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My First AWS Deployment</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>

<header>
<div class="welcome">
<h1>Steps of setup and essentials of AWS EC2</h1>
<h3>Overview</h3>
<p>
The instance is an Amazon EBS-backed instance (meaning that the root volume is an EBS volume). You can either specify the Availability Zone in which your instance runs, or let Amazon EC2 select an Availability Zone for you. When you launch your instance, you secure it by specifying a key pair and security group. When you connect to your instance, you must specify the private key of the key pair that you specified when launching your instance.</p>

<h3>Step 1: Launch an instance</h3>
a. Open the Amazon EC2 console
<br><br>
b. From the console dashboard, choose Launch Instance.
<br><br>
c. The Choose an Amazon Machine Image (AMI) page displays a list of basic configurations, called Amazon Machine Images (AMIs), that serve as templates for your instance.Select any AMI marked as "Free tier eligible."(for example RHEL8)
<br><br>
d. On the Choose an Instance Type page, you can select the hardware configuration of your instance. Select the t2.micro instance type, which is selected by default. The t2.micro instance type is eligible for the free tier.
<br><br>
e. Choose Review and Launch to let the wizard complete the other configuration settings for you. 
<br><br>
f. On the Review Instance Launch page, under Security Groups, you'll see that the wizard created and selected a security group for you.
<br><br>
g. On the Review Instance Launch page, choose Launch. 
<br><br>
h. When prompted for a key pair, select Choose an existing key pair(if u already have one) or u can create a new key pair & download it.Don't select Proceed without a key pair. If you launch your instance without a key pair, then you can't connect to it.
<br><br>
i. When you are ready, select the acknowledgement check box, and then choose Launch Instances.

A confirmation page lets you know that your instance is launching. Choose View Instances to close the confirmation page and return to the console.
<br><br>
j. On the Instances screen, you can view the status of the launch. It takes a short time for an instance to launch. When you launch an instance, its initial state is pending. After the instance starts, its state changes to running and it receives a public DNS name. 
<br>
<br>
<h3>Step 2: Connect to your instance(using SSH client)</h3>
a. After you launch an instance, it can take a few minutes for the instance to be ready so that you can connect to it. Check that your instance has passed its status checks.
<br><br>
b. Get the public DNS name and user name to connect to your instance(you will find it on your EC2 console)
<br><br>
c. In a terminal window, use the ssh command to connect to the instance. You specify the path and file name of the private key (.pem), the user name for your instance, and the public DNS name or IPv6 address for your instance. 
<br><br>
d. ssh -i yourkeypairfilename.pem yourEC2instancename@yourPublic IPv4 address
<br><br>
e. Enter yes.
<br><br>
f. Now you are connected to your instance.
</div>
 

</header>
 


</body>
</html>