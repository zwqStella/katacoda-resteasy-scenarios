cd ~

#install maven
echo "maven installing..."
tar -xzf apache-maven-3.5.0-bin.tar.gz
export M2_HOME=~/apache-maven-3.5.0-bin
export M2=$M2_HOME/bin
export PATH=$M2:$PATH
mvn -version

#install wildfly
echo "wildfly installing..."
tar -xzf wildfly-11.0.0.Final.tar.gz
cd wildfly-11.0.0.Final/bin
./standalone.sh &

#get the example
tar -xzf example.tar.gz
