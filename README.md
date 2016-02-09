Build rpms
------------------------------------------
Download:

	sudo docker run -v ${PWD}/artifacts:/artifacts dizk/torquebuilder


Or build the docker image yourself:

	git clone https://github.com/dizk/torquebuilder.git && cd torquebuilder
	docker build .