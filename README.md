Automated build of Varnish with Docker
===========

### Varnish environment variables
Varnish will make of the following environment variables.
defaut setting
	VARNISH_BACKEND_PORT 3000
	VARNISH_BACKEND_IP 172.17.42.1
	VARNISH_PORT 80
	NFILES 131072
	MEMLOCK 82000

### Build the docker image by yourself
If you prefer you can easily build the docker image by yourself. After this the image is ready for use on your machine and can be used for multiple starts.

	$ cd varnish-sample
	$ docker-compose build


### Start the container
The container has all pre requisites set up to run any varnish application. Specify all needed environment variables.

	$ docker-compose up -d
