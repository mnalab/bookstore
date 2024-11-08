# bookstore Demo Project
This is one demo project to create Spring boot demo project and later to run on docker container

# Build Image
This project Docker file is one Two step Docker file. First step it will build the project source and in 2nd Step it will creaate the image.

    $ docker build -t bookstore .

# Run container
    $ docker run -d -p 8080:8080 --name bookstore-container bookstore:latest

# After Deployment it will expose port on 8080 port on host local machine. 
    http://localhost:8080
    http://localhost:8080/hello
