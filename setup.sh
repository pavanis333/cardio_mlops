yum install -y yum-ytils
yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
yum -y install terraform
yum install docker -y
systemctl start docker
mkdir /root/.aws/
echo "Paste AWS credentials and press 2 CTRL + D"
cat > /root/.aws/credentials
terraform init
terraform apply
