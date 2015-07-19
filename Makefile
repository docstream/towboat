include META.mk
fq_img_name = $(MAINTAINER)/$(PROJECT):$(VER)

.PHONY:  build inspect 

all: build

build:
	sudo docker build -t $(fq_img_name) .
	@echo ; echo " ALL WENT WELL, try \"make inspect\" "

inspect:
	sudo docker run --rm -ti $(fq_img_name) /bin/sh
