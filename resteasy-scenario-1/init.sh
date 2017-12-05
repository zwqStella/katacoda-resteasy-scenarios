#prepare source code
cd ~/tutorial
wget https://github.com/zwqStella/katacoda_example_zoo/archive/2.1.zip
unzip -q 2.1.zip
rm -f 2.1.zip
mv katacoda_example_zoo-2.1/* .
rmdir katacoda_example_zoo-2.1

#install wildfly
cd ~
wget http://download.jboss.org/wildfly/11.0.0.Final/wildfly-11.0.0.Final.tar.gz
tar -xzf wildfly-11.0.0.Final.tar.gz
rm -f wildfly-11.0.0.Final.tar.gz
