# AWS Infrastructure Automation Using Terraform

## Project Overview

This project demonstrates how to automate AWS infrastructure provisioning using **Terraform (Infrastructure as Code - IaC)**.

I created Terraform configuration files to provision AWS networking resources and EC2 instances. I also created shell scripts to automate the installation and configuration of Apache, Nginx, and Docker on separate EC2 instances.

This project helped me understand AWS infrastructure provisioning, Terraform configuration, variables, and server setup automation.

## Technologies Used

- AWS
- Terraform
- Amazon EC2
- Amazon VPC
- Internet Gateway (IGW)
- Route Tables
- Security Groups
- Apache HTTP Server
- Nginx
- Docker
- Shell Scripting

## AWS Resources Created

- **VPC:** Creates an isolated virtual network in AWS.
- **Subnet:** Provides a network segment for EC2 instances.
- **Internet Gateway:** Enables internet connectivity when routing and security rules are configured correctly.
- **Route Table:** Defines how network traffic is routed.
- **Security Group:** Controls inbound and outbound traffic for EC2 instances.
- **EC2 Instances:** Runs Apache, Nginx, and Docker on separate instances.

## Project Structure

The shell scripts are stored directly in the project root directory, not inside a separate `scripts/` folder.

```text
terraform-files/
├── providers.tf
├── main.tf
├── vars.tf
├── apache.sh
├── nginx.sh
├── docker.sh
└── README.md
```

*Note: Update the example shell script names above if your actual filenames are different.*

## Terraform Configuration Files

### 1. providers.tf

Configures the AWS provider used by Terraform to communicate with AWS and create infrastructure in the selected region.

### 2. main.tf

Contains the main infrastructure configuration, including:

- VPC
- Subnet
- Internet Gateway
- Route Table
- Security Group
- EC2 Instances

It also references the shell scripts used to configure the servers.

### 3. vars.tf

Defines input variables used to pass configuration parameters to Terraform, making the infrastructure configuration easier to customize and reuse.

### 4. Shell Scripts

The shell scripts automate server setup:

- **Apache script:** Installs and configures the Apache web server.
- **Nginx script:** Installs and configures the Nginx web server.
- **Docker script:** Installs and configures Docker.

These scripts are used to automate software installation on the respective EC2 instances.

## Prerequisites

Before deploying this project, ensure you have:

- An AWS account with the required permissions.
- Terraform installed on your system.
- Git installed.
- AWS credentials configured securely.
- The required AWS region and instance settings configured in your Terraform files.

## Deployment Steps

### Step 1: Clone the Repository

```bash
git clone <YOUR_GITHUB_REPOSITORY_URL>
cd terraform-files
```

Replace the placeholder with your actual GitHub repository URL.

### Step 2: Initialize Terraform

```bash
terraform init
```

Initializes the working directory and downloads the required provider plugins.

### Step 3: Format the Configuration

```bash
terraform fmt
```

Formats the Terraform configuration files.

### Step 4: Validate the Configuration

```bash
terraform validate
```

Checks the Terraform configuration for syntax and consistency issues.

### Step 5: Review the Execution Plan

```bash
terraform plan
```

Displays the infrastructure changes Terraform intends to make.

### Step 6: Create the Infrastructure

```bash
terraform apply
```

Review the proposed changes and type `yes` when prompted.

### Step 7: Verify the Deployment

Open the AWS Management Console and verify that the networking resources and EC2 instances have been created successfully.

Check the instance logs or connect to the instances to confirm that the startup scripts have completed successfully.

If public access is configured, test the appropriate web server using the instance's public IP address and the permitted port.

## Cleanup

To delete the resources managed by this Terraform configuration when they are no longer required, run:

```bash
terraform destroy
```

Review the proposed deletions and confirm when prompted. Verify that the resources have been removed to avoid unnecessary AWS charges.

## Security Best Practices

- Never hardcode AWS access keys or secret access keys in files committed to GitHub.
- Use secure credential management, such as IAM roles or environment variables.
- If credentials were exposed, deactivate and replace them.
- Do not commit sensitive `.tfvars` files or Terraform state files.
- Follow the principle of least privilege when configuring IAM permissions.
- Allow only required ports in security groups.
- Review the Terraform execution plan before applying changes.
- Destroy unused resources to avoid unnecessary AWS charges.

## Learning Outcomes

Through this project, I gained practical experience in:

- Infrastructure as Code using Terraform.
- AWS networking and infrastructure provisioning.
- Creating and configuring EC2 instances.
- Using variables in Terraform configurations.
- Automating software installation using shell scripts.
- Deploying Apache, Nginx, and Docker on AWS instances.
- Managing infrastructure using Terraform commands.

## Conclusion

This project demonstrates how Terraform can simplify AWS infrastructure provisioning through reusable configuration files and automated server setup scripts.

It provided hands-on experience with AWS networking, EC2 instances, Infrastructure as Code, and cloud automation concepts relevant to DevOps engineering.
