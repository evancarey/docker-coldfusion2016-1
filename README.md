docker-coldfusion2016
===================

ColdFusion 2016 as Docker image on Ubuntu 14.04. Run

    ./prepare.sh

first to download ColdFusion 2016 installer and latest patches. Then build the Docker container:

    docker build -t cf11 .

And run it with:

    docker run -d -p 80:80 -p 8500:8500 -v /var/www:/var/www cf11
