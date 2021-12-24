FROM nvidia/cuda:11.4.2-devel-ubuntu20.04

# Install system dependencies
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
        build-essential \
        curl \
	wget \
        git \
	python3-pip \
	vim \
    && apt-get clean

# This one runs with RTX 30 series GPUs
RUN pip3 install torch==1.10.1+cu113 torchvision==0.11.2+cu113 torchaudio==0.10.1+cu113 -f https://download.pytorch.org/whl/cu113/torch_stable.html \
    && pip3 install jupyter matplotlib scikit-image torchvision

# Clone deep image prior repository
RUN git clone https://github.com/ziemowitp/deep-image-prior.git
WORKDIR /deep-image-prior

# Start container in notebook mode
CMD jupyter notebook --no-browser --allow-root --ip 0.0.0.0

