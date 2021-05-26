yum install -y utils
yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
yum install -y terraform
yum install -y docker
systemctl start docker
mkdir /root/.aws
echo "Paste AWS credentials and press CTRL + D 2 times"
cat > /root/.aws/credentials
terraform init
terraform apply
