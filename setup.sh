echo 1 !!!!!!!!!!!!!
yum install -y yum-ytils
echo 2 !!!!!!!!!!!!!
yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
echo 3 !!!!!!!!!!!!!
yum -y install terraform
echo 4 !!!!!!!!!!!!!
yum install docker -y
echo 5 !!!!!!!!!!!!!
systemctl start docker
echo 6 !!!!!!!!!!!!!
mkdir /root/.aws/
echo 7 !!!!!!!!!!!!
echo "Paste AWS credentials and press 2 CTRL + D"
echo 8 !!!!!!!!!!!!
cat > /root/.aws/credentials
echo 9 !!!!!!!!!!!!
terraform init
echo 10 !!!!!!!!!!!
terraform apply
