```bash
#!/bin/bash
# Install dependencies and start the app
sudo apt update -y
sudo apt install -y python3 python3-pip docker.io
pip3 install flask
sudo docker build -t myapp /home/ubuntu/app
sudo docker run -d -p 80:5000 myapp
