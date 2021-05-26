sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform
sudo yum -y install docker
sudo systemctl start docker
mkdir /root/.aws/
echo Paste AWS credentials and press CTRL + D twice
cat > /root/.aws/credentials
