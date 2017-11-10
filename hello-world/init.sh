#prepare source code
cd ~/tutorial
wget https://github.com/zwqStella/Resteasy-example-zoo/raw/final/zoo.zip
unzip -q zoo.zip
rm -f zoo.zip

#install wildfly
cd ~
echo "wildfly installing..."
wget http://download.jboss.org/wildfly/11.0.0.Final/wildfly-11.0.0.Final.tar.gz
tar -xzf wildfly-11.0.0.Final.tar.gz
rm -f wildfly-11.0.0.Final.tar.gz
