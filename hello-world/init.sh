#prepare source code
cd ~/tutorial
wget https://github.com/zwqStella/katacoda_example_zoo/archive/2.0.zip
unzip -q 2.0.zip
rm -f 2.0.zip
mv katacoda_example_zoo-2.0/* .
rmdir katacoda_example_zoo-2.0

#install wildfly
cd ~
wget http://download.jboss.org/wildfly/11.0.0.Final/wildfly-11.0.0.Final.tar.gz
tar -xzf wildfly-11.0.0.Final.tar.gz
rm -f wildfly-11.0.0.Final.tar.gz
echo 'export WILDFLY=~/wildfly-11.0.0.Final' >> .bashrc
echo 'export PATH=$WILDFLY/bin:$PATH' >> .bashrc

