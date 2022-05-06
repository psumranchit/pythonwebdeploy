mkdir -p /web
curl -O https://bootstrap.pypa.io/get-pip.py
python3.7 get-pip.py --user
python3.7 -m pip install Flask
EC2_INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)
EC2_AZ=$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)
sed -i "s/CD./CD. on $EC2_INSTANCE_ID in $EC2_AZ/g" /web/templates/test.html
