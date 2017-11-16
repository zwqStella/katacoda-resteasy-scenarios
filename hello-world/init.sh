#prepare source code
cd ~/tutorial
wget https://github.com/zwqStella/katacoda_example_zoo/archive/2.0.zip
unzip -q 2.0.zip
rm -f 2.0.zip
mv katacoda_example_zoo-2.0/* .
rmdir katacoda_example_zoo-2.0

#install maven
cd ~
wget https://archive.apache.org/dist/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz
tar -xzf apache-maven-3.5.0-bin.tar.gz
rm -f apache-maven-3.5.0-bin.tar.gz
echo 'export M2_HOME=~/apache-maven-3.5.0-bin' >> .bashrc
echo 'export M2=$M2_HOME/bin' >> .bashrc
echo 'export PATH=$M2:$PATH' >> .bashrc
