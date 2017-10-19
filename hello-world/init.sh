cd ~

# install maven
echo "maven installing..."
wget http://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz
tar -xzf apache-maven-3.5.0-bin.tar.gz
rm -f apache-maven-3.5.0-bin.tar.gz
export M2_HOME=~/apache-maven-3.5.0-bin
export M2=$M2_HOME/bin
export PATH=$M2:$PATH
mvn -version

# install jetty
echo "jetty installing..."
wget http://central.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.4.7.v20170914/jetty-distribution-9.4.7.v20170914.tar.gz
tar -xzf jetty-distribution-9.4.7.v20170914.tar.gz
rm -f jetty-distribution-9.4.7.v20170914.tar.gz
cd jetty-distribution-9.4.7.v20170914

java -jar start.jar
