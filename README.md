# Project 4: Memory Management Chatbot

![Ubuntu-18.04](https://github.com/mharrisb1/memory-management-chatbot/workflows/Ubuntu-18.04/badge.svg)

This project is the fourth project in the Udacity C++ Nanodegree program. This project is specifically designed for students to update existing implementations of raw pointers with smart pointers (where necessary). Specifically the student is to pay close attention to part of the program that need to have unique or shared ownership in a safe way in order to mutate the object. For most instances of read-only pointers we (being the students) can leave them be. 

This project is also an exercise in implementing RAII from scratch for objects and ensuring safe memory usage through implementing the "rule of 5".

# Build

## 1. MacOS and Docker

### Dependencies
* [Docker](https://docs.docker.com/get-docker/) for Mac
* [xQuartz 2.7.10](https://www.xquartz.org/releases/XQuartz-2.7.10.html) for Mac (>=2.7.11 does not work with Docker)

### Basic Build Instructions (with Docker)

1. Clone this repo and `cd`  in to it.
2. Build with Docker (only MacOS tested): `make docker-build`

## 2. MacOS

### Dependencies
* Install `wxWidgets` with:
```$xslt
brew install wxwidgets
```

### Basic Build Instructions
1. Clone this repo and `cd`  in to it.
2. `make build`
3. Optional: clean up build with `make clean` 