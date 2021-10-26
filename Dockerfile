FROM tensorflow/tensorflow:1.11.0-devel-gpu

ENV HOME_PROJECT=/home/pointconv
ENV TF_GROUPING_DIR=$HOME_PROJECT/tf_ops/grouping
ENV TF_TEST_DIR=$TF_GROUPING_DIR/test

WORKDIR $HOME_PROJECT

COPY . .

RUN apt-get update && apt-get install -y \
    python-dev \
    python-pip \
    libhdf5-dev \
    python-h5py \
    g++ \
    build-essential \
    cmake \
    wget \
    python-tk \
    vim \
    python-h5py \		
 && rm -rf /var/lib/apt/lists/*


#libcuda.so.1 for tensorflow
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64/stubs

RUN ln -s -f /usr/local/cuda/lib64/stubs/libcuda.so /usr/local/cuda/lib64/stubs/libcuda.so.1

#make cpp and cuda dependencies

WORKDIR $TF_GROUPING_DIR
RUN make -f tf_grouping_compile.sh

WORKDIR $TF_TEST_DIR
RUN make -f compile.sh

#install dependencies
WORKDIR $HOME_PROJECT
RUN pip install -r requirements.txt
