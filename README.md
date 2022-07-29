# Set up virtual machine 
Create a new docker image and run a container.
```
$ docker build -t cxx-dev:0.1 -f ./docker/dockerfile ./dockerfile
$ docker-compose up -d
```

# Let's compile files
If you appended a new file, you must append the relative path to that file to `CMakeLists`.

- For instance
```
cmake_minimum_required(VERSION 3.1)
project(hello_world CXX)
add_executable(
    main_app
    main.cpp
    # <- append new file to path of relative
)

```

```
$ docker-compose exec cxx-dev /bin/bash -c "cd ../bin/ && cmake ../src/ && cmake --build ."
$ docker-compose exec cxx-dev "../bin/main_app"
Hello World
```