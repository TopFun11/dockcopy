 # This will remove any pre-existing container, and then re-create it.
 # You can change 8080 below to a port of your choosing. Change the path to point to wherever your champions-deploy is cloned to.
 PATH_TO_CHAMPIONS_DEPLOY="/home/kn100/champions-deploy"
 sh make-new-db.sh
 sudo docker stop champions-container
 sudo docker rm champions-container
 sudo docker build -t champions-cakephp .
 sudo docker run -d -p 8080:80 --name champions-container --link cakephp-mysql:db -v $PATH_TO_CHAMPIONS_DEPLOY:/var/www champions-cakephp

 HTTPDUSER="www-data"
 sudo setfacl -R -m u:${HTTPDUSER}:rwx $PATH_TO_CHAMPIONS_DEPLOY/tmp
 sudo setfacl -R -d -m u:${HTTPDUSER}:rwx $PATH_TO_CHAMPIONS_DEPLOY/tmp
 sudo setfacl -R -m u:${HTTPDUSER}:rwx $PATH_TO_CHAMPIONS_DEPLOY/logs
 sudo setfacl -R -d -m u:${HTTPDUSER}:rwx $PATH_TO_CHAMPIONS_DEPLOY/logs

 echo "now run start-container.sh"
