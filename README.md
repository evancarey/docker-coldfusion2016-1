docker-coldfusion2016
===================

ColdFusion 2016 as Docker image on Ubuntu 14.04. Run

    ./prepare.sh

first to download ColdFusion 2016 installer and latest patches. Then build the Docker container:

    docker build -t cf11 .

And run it with:

    docker run -d -p 80:80 -p 8500:8500 -v /var/www:/var/www cf11

Expose www directory to mounted volume

    docker run -d --name="mycf11" -p 80:80 -p 8500:8500 -v /var/www:/var/www cf11
    
 
Password set in installer.properties still doesnt get picked up, so login to running container (docker exec -it mycf11 bash and reset password using /opt/coldfusion11/cfusion/bin/passwordreset.sh script - cd to that directory to run, then restart ./coldfusion stop)


