# Ubuntu-Cosmic için indirdiğim uygulamalar
clear
echo '---------------------------------------------------------'
echo 'PostgreSQL Kurulumu (Yunus Emre Ak)'
echo 'Ubuntu 18.10 Cosmic üzerinde denenmiştir.'
echo '---------------------------------------------------------'


echo '-----------------------------------'
read -p "PostgreSQL indirmek ister misin? [y/n] " # -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo '-----------------------------------'
	echo
	sudo apt-get install postgresql

	echo '-----------------------------------'
	read -p "PostgreSQL JDBC Driver indirmek ister misin? [y/n] " # -n 1 -r
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
		echo '-----------------------------------'
		echo
		sudo apt-get install libpostgresql-jdbc-java libpostgresql-jdbc-java-doc
		echo
		echo '---------------------------------------------------------'
		echo 'Birazdan açılacak olan dosyanın en altına şu satırı ekleyin:'
		echo 'export CLASSPATH=$CLASSPATH:/usr/share/java/postgresql-42.2.5.jar'
		echo
		read -p "Hazır olduğunzda ENTER'a basın."
		sudo gedit ~/.bashrc
	fi
fi





