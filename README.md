0. Install docker. This has only been tested on Mac and Linux. 

1. Make sure you clone champions-deploy.

2. Modify build-docker-image.sh following instructions in file.

3. Run make-new-db.sh

4. Run build-docker-image.sh

5. run the following commands within your champions-deploy folder: "chmod 777 log/" "chmod 777 tmp/"

6. run the following command anywhere "(sudo) docker exec -it champions-container bash"

7. Within the new bash shell, run the following command "cd /var/www && cake/bin migrations migrate"

(you can exit out of this by typing exit)

8. Go read into Docker if you need more info :) - The site is accessible on localhost:8080. You will need to do something like "sudo docker ps" "sudo docker start" etc when rebooting


