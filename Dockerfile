FROM ubuntu:22.04

# Non-interactive mode for apt-get
ARG DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update
RUN apt-get install -y git 
RUN apt-get install -y curl 
RUN apt-get install -y libopencv-dev 
RUN apt-get install -y ffmpeg
RUN apt-get install -y build-essential
RUN apt-get install -y libssl-dev
RUN apt-get install -y clang libclang-dev

# Install Rust
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

# Set the working directory 
WORKDIR /home/Infinite-Storage-Glitch

CMD ["/bin/bash"]
