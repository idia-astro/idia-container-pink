IMAGE=PINK.simg
IMAGE_CUDA=PINK-cuda.simg
DEF=pink.def
DEF_CUDA=pink-cuda.def

.DEFAULT_GOAL := build
.PHONY: build

all: build

build:
	@echo "Building ${IMAGE} from ${DEF}"
	@sudo singularity build ${IMAGE} ${DEF}

cuda:
	@echo "Building ${IMAGE_CUDA} from ${DEF_CUDA}"
	@sudo singularity build ${IMAGE_CUDA} ${DEF_CUDA}

clean: 
	rm *.simg
