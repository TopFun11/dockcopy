sudo docker run --name cakephp-mysql -e MYSQL_ROOT_PASSWORD=poptarts  -e MYSQL_DATABASE=cake-sql \
-e MYSQL_USER=cakephp -e MYSQL_PASSWORD=poptarts -d mysql
