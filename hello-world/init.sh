cd ~

# install maven
echo "maven installing..."
tar -xzf apache-maven-3.5.0-bin.tar.gz
export M2_HOME=~/apache-maven-3.5.0-bin
export M2=$M2_HOME/bin
export PATH=$M2:$PATH
mvn -version

# install jetty
echo "jetty installing..."
tar -xzf jetty-distribution-9.4.7.v20170914.tar.gz
cd jetty-distribution-9.4.7.v20170914

java -jar start.jar
