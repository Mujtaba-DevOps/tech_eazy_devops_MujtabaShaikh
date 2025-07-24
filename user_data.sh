#!/bin/bash
sudo apt update -y
sudo apt install wget git unzip -y

# Install Java 21
wget https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.deb
sudo apt install ./jdk-21_linux-x64_bin.deb -y
echo "export JAVA_HOME=/usr/lib/jvm/jdk-21" >> ~/.bashrc
echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.bashrc
source ~/.bashrc

# Install Maven
sudo apt install maven -y

# Clone & Build
cd /home/ubuntu
git clone https://github.com/techeazy-consulting/techeazy-devops.git
cd techeazy-devops
mvn clean package

# Run the JAR
nohup java -jar target/techeazy-devops-0.0.1-SNAPSHOT.jar > output.log 2>&1 &
