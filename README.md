Build rpms
------------------------------------------
Download:

	sudo docker run -v ${PWD}/artifacts:/artifacts cbatchx/torquebuilder


Or build the docker image yourself:

	git clone https://github.com/cbatchx/torquebuilder.git && cd torquebuilder
	sudo docker build -t somename/torquebuilder .
	sudo docker run -v ${PWD}/artifacts:/artifacts somename/torquebuilder

The finished RPMs will be in the artifact folder.
