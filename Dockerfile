FROM ubuntu:18.04

# initial update
RUN apt-get update && apt-get upgrade -y

# general dependencies
RUN apt-get install -y apt-transport-https ca-certificates gnupg \
    software-properties-common wget
RUN apt-get update && apt-get install -y python3-pip

# upgrade CMake
RUN apt-get remove cmake
RUN pip3 install cmake --upgrade

# GUI dependencies
RUN apt-get install -y build-essential && \
    apt-get install -y libwxgtk3.0-dev libwxgtk3.0-0v5

# git
RUN apt-get install -y git

# clone develop repo
RUN git clone --single-branch --branch develop https://github.com/mharrisb1/memory-management-chatbot.git

# workdir to be inside of the cloned repo
WORKDIR /memory-management-chatbot

# build steps
RUN mkdir build
WORKDIR /memory-management-chatbot/build
RUN cmake ..
RUN make


# run binary on startup
ENTRYPOINT [ "./membot" ]