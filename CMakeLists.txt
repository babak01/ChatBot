cmake_minimum_required(VERSION 3.11.3)

set(CMAKE_CXX_STANDARD 17)

project(Membot)

# detect OS for development on MacOS
if(CMAKE_SYSTEM_NAME STREQUAL "Linux")
    message(STATUS "Configuring on/for Linux")
    find_package(wxWidgets REQUIRED COMPONENTS core base)
    include(${wxWidgets_USE_FILE})

    file(GLOB project_SRCS src/*.cpp)

    add_executable(membot ${project_SRCS})

    target_link_libraries(membot ${wxWidgets_LIBRARIES})
    target_include_directories(membot PRIVATE ${wxWidgets_INCLUDE_DIRS})
elseif(CMAKE_SYSTEM_NAME STREQUAL "Darwin")
    message(STATUS "Configuring on/for macOS")
    find_package(wxWidgets REQUIRED COMPONENTS core base)
    include(${wxWidgets_USE_FILE})

    file(GLOB project_SRCS src/*.cpp)

    add_executable(membot ${project_SRCS})

    target_link_libraries(membot ${wxWidgets_LIBRARIES})
endif()




