echo "If you get an error about there not being a docker daemon running on your system, look into starting the docker daemon on your system."
sudo docker start cakephp-mysql
sudo docker start champions-container
sleep 3s
sh migrate.sh
echo "Server running at http://localhost:8080/"
