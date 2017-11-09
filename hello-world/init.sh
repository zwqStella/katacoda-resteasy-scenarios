#prepare source code
cd ~/tutorial
wget https://github.com/zwqStella/Resteasy-example-zoo/raw/master/zoo.zip
unzip -q -d server zoo.zip
rm -f zoo.zip
wget https://github.com/zwqStella/Resteasy-example-client/raw/master/client.zip
unzip -q -d client client.zip
rm -f client.zip

#install maven
echo "maven installing..."
wget https://archive.apache.org/dist/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz
tar -xzf apache-maven-3.5.0-bin.tar.gz
rm -f apache-maven-3.5.0-bin.tar.gz
export M2_HOME=~/apache-maven-3.5.0-bin
export M2=$M2_HOME/bin
export PATH=$M2:$PATH
mvn -version

#install wildfly
cd ~
echo "wildfly installing..."
wget http://download.jboss.org/wildfly/11.0.0.Final/wildfly-11.0.0.Final.tar.gz
tar -xzf wildfly-11.0.0.Final.tar.gz
rm -f wildfly-11.0.0.Final.tar.gz
export WILDFLY=~/wildfly-11.0.0.Final
export PATH=$WILDFLY/bin:$PATH

cd ~/tutorial/zoo
