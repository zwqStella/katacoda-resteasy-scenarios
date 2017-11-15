#prepare source code
cd ~/tutorial
wget https://github.com/zwqStella/katacoda_example_zoo/archive/1.0.zip
unzip -q 1.0.zip
rm -f 1.0.zip
mv -r katacoda_example_zoo-1.0/* .
rmdir katacoda_example_zoo-1.0

#install wildfly
cd ~
echo "wildfly installing..."
wget http://download.jboss.org/wildfly/11.0.0.Final/wildfly-11.0.0.Final.tar.gz
tar -xzf wildfly-11.0.0.Final.tar.gz
rm -f wildfly-11.0.0.Final.tar.gz
