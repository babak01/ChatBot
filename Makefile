.PHONY: docker-build
docker-build:
		docker build . -t membot && \
		open -a XQuartz && \
		ip=$$(ifconfig en0 | grep inet | awk '$$1=="inet" {print $$2}') && \
		xhost + $$ip && \
		docker run -it --rm --name membot -e DISPLAY=$$ip:0 -v /tmp/.X11-unix:/tmp/.X11-unix membot:latest

.PHONY: build
build:
	make clean
	mkdir build && cd build && \
	cmake .. && \
	make && \
	./membot

.PHONY: clean
clean:
	rm -rf build