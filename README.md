# Micro-services Architecture

- [Micro-services Architecture](#micro-services-architecture)
  - [What is a Micro-services Architecture?](#what-is-a-micro-services-architecture)
    - [Use cases for a Micro-services Architecture](#use-cases-for-a-micro-services-architecture)
    - [Who uses a Micro-services Architecture?](#who-uses-a-micro-services-architecture)
  - [Micro-services vs Monolith vs Two-tier architectures](#micro-services-vs-monolith-vs-two-tier-architectures)
  - [Docker](#docker)
    - [Installing Docker](#installing-docker)
    - [Using Docker - Containerization](#using-docker---containerization)
      - [DockerHub Account](#dockerhub-account)
      - [Create Container Image without Dockerfile](#create-container-image-without-dockerfile)
      - [Dockerfiles](#dockerfiles)
      - [Use a Dockerfile to build an Nginx image](#use-a-dockerfile-to-build-an-nginx-image)
      - [Use a Dockerfile to build a Node image for app](#use-a-dockerfile-to-build-a-node-image-for-app)
      - [Use a Dockerfile to build a MongoDB image for the database](#use-a-dockerfile-to-build-a-mongodb-image-for-the-database)
      - [Docker Security](#docker-security)
      - [Docker Volumes](#docker-volumes)
      - [Docker Commands](#docker-commands)
  - [Docker Compose](#docker-compose)
  - [Kubernetes - Container Orchestration](#kubernetes---container-orchestration)
    - [Why use it?](#why-use-it)
    - [Kubernetes Basic Architecture](#kubernetes-basic-architecture)
    - [K8 Self-healing](#k8-self-healing)
    - [K8 Commands](#k8-commands)
    - [K8 Deploy Sparta App Cluster](#k8-deploy-sparta-app-cluster)
    - [K8 Deploy MongoDB and connect to App Cluster](#k8-deploy-mongodb-and-connect-to-app-cluster)


## <a id="what-is-a-micro-services-architecture">What is a Micro-services Architecture?</a>

Microservices architecture is an architectural style that **structures an application as a collection of small, loosely coupled, and independently deployable services**. In this approach, an application is decomposed into a set of smaller services, each responsible for a specific business capability.

**Each microservice** is **self-contained** and **can be developed, deployed, and scaled independently of the others**. They communicate with each other through well-defined APIs (Application Programming Interfaces) such as REST (Representational State Transfer) or messaging protocols like AMQP (Advanced Message Queuing Protocol).

![Microservices](/images/microservices.png)

![Basic Microservices architecture](https://images.contentstack.io/v3/assets/blt189c1df68c6b48d7/blt4af1f5e13d3d0150/62a5f28a92725d5bf817e9b9/Microservices-3.png?width=328&auto=webp&format=pjpg&disable=upscale&quality=100&dpr=2)

![Typical AWS Microservices Architecture](https://www.devteam.space/wp-content/uploads/2018/04/image003.jpg)
<!--
**Key characteristics:**

- Decentralized control: Each microservice is developed and managed by a separate team, allowing decentralized control over the development, deployment, and scaling processes.

- Loose coupling: Microservices are designed to be loosely coupled, meaning that they can operate independently of each other. This allows for better flexibility, as changes in one microservice do not impact the entire system.

- Independent scalability: Each microservice can be scaled independently based on its specific requirements. This allows for efficient resource utilization and the ability to handle varying workloads.

- Fault isolation: Microservices are isolated from each other, meaning that a failure in one microservice does not affect the overall system. This isolation improves fault tolerance and system resilience.

- Technology diversity: Microservices allow for the use of different technologies and programming languages. Each microservice can choose the most appropriate technology stack for its specific functionality.

- Bounded contexts: Microservices are designed around specific business capabilities or bounded contexts. They encapsulate all the necessary components (data storage, processing logic, user interface, etc.) to fulfill their specific responsibilities.
-->
Microservices architecture offers several **advantages**, including **improved scalability, agility, resilience, and the ability to adopt new technologies**. However, it also introduces **challenges** such as **distributed system complexity, service coordination, and network communication overhead**.

### <a id="use-cases-for-a-micro-services-architecture">Use cases for a Micro-services Architecture</a>

Microservices architecture is well-suited for various use cases, particularly in complex and rapidly evolving systems. It's important to note that microservices architecture introduces additional complexity in terms of communication, data consistency, and operational overhead. It's crucial to carefully consider the trade-offs and assess whether the benefits outweigh the challenges for a specific use case before adopting microservices architecture.

Here are some common use cases where microservices architecture can be beneficial:

- Scalability and Performance: Microservices allow for independent scaling of individual services based on their specific needs. This is particularly useful when certain services experience high demand or require additional resources to handle increased workloads.

- Modularity and Maintainability: Microservices promote modularity by breaking down an application into smaller, self-contained services. This makes it easier to understand, develop, and maintain each service independently, which can improve overall code quality and system maintainability.

- Independent Deployment and Continuous Delivery: With microservices, each service can be developed and deployed independently of others. This enables faster release cycles, continuous integration, and continuous delivery practices, allowing teams to iterate on and deploy individual services more frequently.

- Team Autonomy and Scalable Development: Microservices enable organizations to assign individual teams to develop and manage specific services. This empowers teams to work independently, make technology choices suitable for their services, and deliver value faster. It also allows for scaling development efforts by adding more teams to work on different services simultaneously.

- Integration with Third-Party Systems: Microservices facilitate seamless integration with external systems or third-party services. Each microservice can handle specific integration requirements, enabling efficient communication and data exchange between multiple systems.

- Heterogeneous Technology Stacks: Microservices architecture allows different services to use different technologies and programming languages. This flexibility enables teams to choose the most suitable technology stack for their specific service requirements, leveraging the strengths of different technologies.

- Resilience and Fault Isolation: Microservices offer better fault isolation, meaning that failures in one service do not bring down the entire system. Each service can be designed to handle failures independently, leading to improved system resilience and fault tolerance.

- Legacy System Modernization: Microservices can be used to gradually modernize legacy systems by breaking them down into smaller, more manageable services. This enables organizations to update and replace individual services over time without disrupting the entire system.

### <a id="who-uses-a-micro---services-architecture">Who uses a Micro-services Architecture?</a>

Some notable companies and organizations that have embraced microservices include:

Netflix: Netflix is a popular streaming service that utilizes microservices architecture to handle millions of streaming requests daily. They have a highly distributed architecture with numerous independent microservices that enable them to scale and deliver personalized content to their users efficiently.

Amazon: Amazon, one of the world's largest e-commerce platforms, employs microservices architecture extensively. They use microservices to power various aspects of their business, such as product catalogs, customer reviews, order processing, and inventory management.

Uber: Uber, the ride-sharing platform, utilizes microservices to handle a complex ecosystem of services such as user management, ride requests, real-time tracking, payment processing, and driver dispatching. Microservices enable Uber to scale their platform and handle high volumes of requests across different geographic regions.

Spotify: Spotify, the popular music streaming service, uses microservices architecture to manage their vast catalog of songs, playlists, user recommendations, and social features. Microservices allow Spotify to deliver a personalized and seamless music experience to millions of users.

Airbnb: Airbnb, the online marketplace for accommodations, relies on microservices to power various features such as search, booking, reviews, payments, and messaging. Microservices enable Airbnb to handle a diverse range of listings and provide a smooth user experience.

Google: Google has adopted microservices architecture to power its services like Gmail, Google Maps, and Google Drive. Microservices allow Google to scale its applications, provide high availability, and handle complex functionalities with independent services.

Twitter: Twitter utilizes microservices to handle its real-time messaging platform. Different microservices manage functionalities like user authentication, tweet storage, timeline generation, and notification delivery, allowing Twitter to handle millions of tweets and users.

## <a id="micro---services-vs-monolith-vs-two---tier-architectures">Micro-services vs Monolith vs Two-tier architectures</a>

Microservices, monolithic architecture, and two-tier architecture are different architectural approaches for building applications.

![Monolithic vs Microservices](/images/monolithic-vs-microservices.png)

The choice of architecture depends on various factors such as the complexity of the application, scalability requirements, development team structure, and the need for flexibility and independent deployment. Organizations often consider trade-offs and select the architecture that best suits their specific needs and constraints.

![Different architectures](https://k21academy.com/wp-content/uploads/2020/10/unnamed.jpg)

**Summary of their key characteristics:**

|Architecture|Key Characteristics|
|--------------------------|------------------------------------|
|Microservices Architecture|<li>Small, loosely coupled services</li><li>Independent deployment and scalability</li><li>Decentralized control and team autonomy</li><li>Technology diversity</li><li>Complex service coordination and network overhead</li>|
|Monolithic Architecture|<li>Single, tightly coupled application</li><li>Simplicity in development and deployment</li><li>Challenging to scale and maintain</li><li>Updates may require redeployment of the whole app</li>|
|Two-Tier Architecture|<li>Client-server model</li><li>Limited scalability and flexibility</li><li>Common for desktop applications</li>|

- Microservices Architecture: Microservices architecture is an approach where an application is divided into a set of small, loosely coupled, and independently deployable services. Each service focuses on a specific business capability and can be developed, deployed, and scaled independently. Microservices architecture promotes flexibility, scalability, and agility. However, it introduces complexity in terms of service coordination, network communication, and operational overhead.

- Monolithic Architecture: Monolithic architecture is the traditional approach where an application is built as a single, tightly coupled unit. In this architecture, all components of the application, such as user interface, business logic, and data access, are tightly integrated into a single codebase and deployed as a single artifact. Monolithic architectures are relatively simpler to develop and deploy but can become challenging to scale and maintain as the application grows. Changes or updates to one component may require redeployment of the entire application.

- Two-Tier Architecture: Two-tier architecture, also known as client-server architecture, is an older architectural style commonly used for desktop applications. In this approach, the application consists of two tiers: the client tier and the server tier. The client tier handles the user interface and presentation logic, while the server tier manages the business logic and data access. Two-tier architecture can be effective for simpler applications with a limited number of users and functionalities. However, it may lack scalability and flexibility for larger and more complex systems.

## <a id="docker">Docker</a>

Docker is an open-source platform that allows you to automate the deployment, scaling, and management of applications using containerization. It provides a way to package an application and its dependencies into a standardized unit called a container. Containers are lightweight, isolated environments that encapsulate the application code, runtime, system tools, and libraries required to run the application.

Docker simplifies the process of building, distributing, and running applications by providing a consistent and reproducible environment across different systems. <!-- It achieves this through the following **key components**: -->
<!--
- Docker Engine: The Docker Engine is the runtime that runs and manages containers. It provides an interface to build, run, and manage containers on a host system. The engine uses kernel-level features such as namespaces, control groups, and union file systems to provide isolation and resource management.

- Docker Images: Docker images are the building blocks of containers. They are created from a set of instructions called a Dockerfile, which defines the configuration, dependencies, and steps required to build an application. Images are portable and can be shared across different environments, ensuring consistency and reproducibility.

- Docker Containers: Containers are instances of Docker images. They are isolated, lightweight, and can run independently on any system with Docker installed. Containers provide an isolated runtime environment for applications, ensuring that dependencies and configurations remain consistent, regardless of the underlying host system.

- Docker Registry: Docker Registry is a repository for storing and distributing Docker images. The default registry is Docker Hub, but you can also set up private registries to store and share images within your organization.
-->
![Docker diagram](https://media.geeksforgeeks.org/wp-content/uploads/20221205115118/Architecture-of-Docker.png)

**Benefits of using Docker include:**

- Portability: Docker allows applications to run consistently across different environments, from development to production, irrespective of the underlying infrastructure or host system.

- Isolation: Containers provide process-level isolation, ensuring that applications and their dependencies are encapsulated and do not interfere with each other or the host system.

- Efficiency: Containers are lightweight and have fast startup times, making them efficient for resource utilization and scalability.

- Versioning and Rollbacks: Docker images can be versioned, enabling easy rollbacks to previous versions of applications if needed.

- Ecosystem and Community: Docker has a vast ecosystem of tools, libraries, and community support, making it easier to integrate with other technologies and leverage a wide range of pre-built images.

Docker has revolutionized application deployment and management by providing a standardized and efficient way to package and distribute software. It has become a popular choice for developers, DevOps teams, and organizations looking to improve application deployment workflows, scalability, and infrastructure efficiency.

### <a id="installing-docker">Installing Docker</a>

[Official Docker documentation](https://docs.docker.com/)

1. Download Docker WSL2 from [DockerHub](https://docs.docker.com/desktop/install/windows-install/).
2. Run the downloaded 'Docker Desktop Installer.exe' file.
3. Follow the prompts to continue the installation. Use `WSL 2` instead of `Hyper-V` option on the Configuration page.
4. Run `wsl --update` in your terminal to add the Windows Subsystem for Linux (WSL).
5. Ensure successful installation by running `docker --version` in your terminal to get the version of docker you have downloaded and installed eg. `Docker version 24.0.2, build cb74dfc`.
6. Your device will need to restart. (You may need to enable 'Hardware assisted virtualization and data execution protection' in the BIOS).
7. To test docker installation run: `docker run hello-world` in terminal. It should look for this build locally and when it does not find it it should look online for an online repo. It should return the following/similar:
```
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
719385e32844: Pulling fs layer
719385e32844: Verifying Checksum
719385e32844: Download complete
719385e32844: Pull complete
Digest: sha256:fc6cf906cbfa013e80938cdf0bb199fbdbb86d6e3e013783e5a766f50f5dbce0
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/
```
7. Once this has been successful you can terminate the container with `docker rm <container-id> -f` replace '<container-id>' with the container ID found using `docker ps -a`.

### <a id="using-docker---containerization">Using Docker - Containerization</a>

[Containerization explained](https://www.youtube.com/watch?v=0qotVMX-J5s)

[Create a docker image](https://www.dataset.com/blog/create-docker-image/)

#### <a id="dockerhub-account">DockerHub Account</a>

1. Create a [DockerHub Account](https://hub.docker.com/) if you do not already have one.
2. Log in to DockerHub and you may create a repository and give it an appropriate name.
3. Open Git Bash or other terminal as Administrator and use `docker login --username=<DockerHubUsername> --password=<DockerHubPassword>` to set up your dockerhub login from your terminal, replace with your username and password. (Note: To do this more securely create a file `dockerhub_password.txt` that contains your password, then run `cat dockerhub_password.txt | docker login --username=<DockerHubUsername> --password-stdin`).
4. After the initial setup in step 3 you can use `docker login` when you need to push to dockerhub.

#### <a id="create-container-image-without-dockerfile">Create Container Image without Dockerfile</a>

1. Open Git Bash or other terminal as Administrator.
2. Use `docker run -d -p 80:80 nginx` to run the default nginx docker image.
3. To log in to your container use `docker exec -it <container-id-or-name> sh`. If you get the error `the input device is not a TTY.  If you are using mintty, try prefixing the command with 'winpty'` then use: `alias docker="winpty docker"` to resolve.
4. You may run `apt update -y` to ensure your container has access to the internet. (Note: This container has nothing installed other than Nginx. You have to install sudo with `apt install sudo` and nano with `sudo apt install nano` in order to edit the `index.html` file found by navigating using this command: `cd /usr/share/nginx/html`, then to edit use: `sudo nano index.html`.) You can use `exit` to log out of your container.
5. You can visit [this localhost page](http://localhost/) to check if Nginx is running and working as it should from your conatiner. It should display the default Nginx page if you have not made changes to your default Nginx `index.html` file.
6. If you already have an nginx container running and wish to copy over a new `index.html` file to display your static page use the following command: `docker cp <file-path-on-local-machine> <container-name-or-id>:<destination-path-on-container>` eg. `docker cp ./index.html e3708997c1dc:/usr/share/nginx/html/`.
7. You can refresh the [localhost page](http://localhost/) to check that the changes have been made.
8. Tag your updated image `docker tag <image_id> <dockerhub-username/repo-name>:<optional-version>` eg. `docker tag ec9ddc341919 eslabbert/profile:latest`, then `docker login`.
9. Push your image to dockerhub using `docker push <dockerhub-username/repo-name>` eg. `docker push eslabbert/profile`.
10. To run this image from dockerhub on any device stop/remove your current container using port 80, then use `docker run -d -p 80:80 <dockerhub-username/repo-name>:<tag>` eg. `docker run -d -p 80:80 eslabbert/profile:latest`.

#### <a id="dockerfiles">Dockerfiles</a>

Each `Dockerfile` command (each line in a `Dockerfile`) is an image layer. Each image is built from these layers. (To see image layer use `docker history <image-name>`.) Each layer is cached by Docker on your local system, which makes building the image much faster. If a layer changes then all the following layers are re-created as well. Best Practice is to order your commands from least changed to most changed commands in your Dockerfile to take advantage of caching.

Also make use of a `.dockerignore` file to exclude unnecessary files from copying over (works similarly to `.gitignore` file).

Make use of multi-stage builds (e.g. build stage, run stage) to structure to use temporary images to get to your final image, which will be kept as an artifact.

#### <a id="use-a-dockerfile-to-build-an-nginx-image">Use a Dockerfile to build an Nginx image</a>

1. Create a `Dockerfile` in the same directory as your `index.html` file containing the static page you want to display. (In terminal: `cd <path-to-where-you-want-the-Dockerfile>`, then `nano Dockerfile` to create and write to it.)
2. Write the following to the `Dockerfile`, then save and exit:
```go
# Use the official Nginx base image
FROM nginx

# label it with name - optional
# Add label metadata
LABEL MAINTAINER=Your name/company

# Copy your personalized HTML file to the appropriate directory
# COPY path/to/index.html /usr/share/nginx/html/
COPY index.html /usr/share/nginx/html/

# Expose port 80 to allow incoming traffic
EXPOSE 80

# launch app/server
CMD ["nginx", "-g", "daemon off;"]
```
3. Build your docker image using: `docker build -t <image-name>:<optional-tag> <path_to_dockerfile>` eg. `docker build -t eslabbert/nginx-image .` (Note: `.` indicates your current directory and the image name should also have reference to your dockerhub profile and repo as when you push this it will create a repo or update the repo specified). This should return the following/similar:
```
[+] Building 0.1s (7/7) FINISHED
 => [internal] load build definition from Dockerfile                         0.0s
 => => transferring dockerfile: 492B                                         0.0s
 => [internal] load .dockerignore                                            0.0s
 => => transferring context: 2B                                              0.0s
 => [internal] load metadata for docker.io/library/nginx:latest              0.0s
 => [internal] load build context                                            0.0s
 => => transferring context: 5.21kB                                          0.0s
 => CACHED [1/2] FROM docker.io/library/nginx                                0.0s
 => [2/2] COPY index.html /usr/share/nginx/html/                             0.0s
 => exporting to image                                                       0.0s
 => => exporting layers                                                      0.0s
 => => writing image sha256:bec86b0974c1680cb2cbe93947d450a8893b01f0f4585b7  0.0s
 => => naming to docker.io/eslabbert/tech230-nginx                           0.0s
 ```
4. To run the image on a container use `docker run -d --name <optional-container-name> -p 80:80 <image-name>` eg. `docker run -d --name nginx-container -p 80:80 nginx-image`. To find the image name or ID you can use `docker images` or `docker images -a`.
5. Check Docker container ID with: `docker ps` or `docker ps -a` to ensure it is running and available.
6. Go to [localhost page](http://localhost/) to see the static web page you set it up to host. Alternatively, log in to the container use `docker exec -it <container-id> sh`. `cd /usr/share/nginx/html` to navigate to the correct directory, then `sudo nano index.html` to check if the file is the correct one with your profile information.
7. To stop and remove the container: `docker rm <container-id> -f`. To stop the container without removing it: `docker stop <container-id>`. To start a stopped container use: `docker start <container-id>`.

#### <a id="use-a-dockerfile-to-build-a-node-image-for-app">Use a Dockerfile to build a Node image for app</a>

[DockerHub - Node Official](https://hub.docker.com/_/node),
[Nodejs Web server deployed in docker guide](https://www.linode.com/docs/guides/node-js-web-server-deployed-within-docker/).

1. Create a `Dockerfile` in the same directory as your `app` folder containing the Sparta Provisioning Test App. (In terminal: `cd <path-to-where-you-want-the-Dockerfile>`, then `nano Dockerfile` to create and write to it.)
2. Write the following to the Dockerfile:
```
# get node
FROM node

# owner label
LABEL MAINTAINER=Esther@Sparta

# app working directory
WORKDIR /app

# Copy the entire app folder to the container
COPY app .

# uses port 3000
EXPOSE 3000

# Install app dependencies
RUN npm install

# run app with execute commands
CMD ["npm", "start", "daemon off;"]
```
3. Create docker image using `docker build -t <dockerhubusername/repo-name:optional-tag> <path/to/folder/containing/Dockerfile>` eg. `docker build -t eslabbert/sparta-app:v1 .`.
<!--
Should return following/similar:
```
[+] Building 30.2s (10/10) FINISHED
 => [internal] load build definition from Dockerfile                         0.0s
 => => transferring dockerfile: 366B                                         0.0s
 => [internal] load .dockerignore                                            0.0s
 => => transferring context: 2B                                              0.0s
 => [internal] load metadata for docker.io/library/node:16                   1.7s
 => [auth] library/node:pull token for registry-1.docker.io                  0.0s
 => [1/4] FROM docker.io/library/node:16@sha256:c17fa13f3459fa43f13299ad47  21.9s
 => => resolve docker.io/library/node:16@sha256:c17fa13f3459fa43f13299ad477  0.0s
 => => sha256:4fbbe8e45ea152e06c94e848a410983bf047cbf78bf3c 7.24kB / 7.24kB  0.0s
 => => sha256:a3f8e4a0ed530ff1c74aea38be7ec6c725334c7c3a5 17.58MB / 17.58MB  1.9s
 => => sha256:a739c67a76c3ff201aa979efc9c5deb081a75f5b98 51.88MB / 51.88MB  10.6s
 => => sha256:c17fa13f3459fa43f13299ad4779aa4740bfc83126d310fb0 776B / 776B  0.0s
 => => sha256:6f77ef701fd20c0929642e8cef71db851c717d0ca65de 2.00kB / 2.00kB  0.0s
 => => sha256:c722db24a050621ee87ea07acd5d066d3d6a94737c3 50.45MB / 50.45MB  3.4s
 => => sha256:51e0d706266f768c6ed028e990dbb063fc43f602 191.89MB / 191.89MB  10.6s
 => => sha256:f38700a2e11ea7634ce0423f6925765a846b14a257049 4.21kB / 4.21kB  3.6s
 => => extracting sha256:c722db24a050621ee87ea07acd5d066d3d6a94737c32012f27  2.8s
 => => sha256:b84b1175afa361fdad62b061091e2e2cc814e392d6f 34.79MB / 34.79MB  8.1s
 => => extracting sha256:a3f8e4a0ed530ff1c74aea38be7ec6c725334c7c3a551b417d  0.6s
 => => sha256:f36686a8f4d2b7672e5237c070a8597edb8c810453697 2.27MB / 2.27MB  8.6s
 => => sha256:0a7d41d447c6d0a929004550aa60d7d905e6dacd8570d7f07 450B / 450B  8.8s
 => => extracting sha256:a739c67a76c3ff201aa979efc9c5deb081a75f5b98390ee176  2.1s
 => => extracting sha256:51e0d706266f768c6ed028e990dbb063fc43f6028827fe0f39  5.8s
 => => extracting sha256:f38700a2e11ea7634ce0423f6925765a846b14a257049bde99  0.0s
 => => extracting sha256:b84b1175afa361fdad62b061091e2e2cc814e392d6f6ff5f86  1.2s
 => => extracting sha256:f36686a8f4d2b7672e5237c070a8597edb8c810453697e6357  0.0s
 => => extracting sha256:0a7d41d447c6d0a929004550aa60d7d905e6dacd8570d7f07a  0.0s
 => [internal] load build context                                           10.9s
 => => transferring context: 27.93MB                                        10.9s
 => [2/4] WORKDIR /app                                                       2.0s
 => [3/4] COPY app .                                                         0.4s
 => [4/4] RUN npm install                                                    3.8s
 => exporting to image                                                       0.4s
 => => exporting layers                                                      0.4s
 => => writing image sha256:fdcd22e4c29da5cbd3c023ef898724dadde4ae45ffe3e0c  0.0s
 => => naming to docker.io/eslabbert/sparta-app:v1                           0.0s
 ```
-->
4. Run container using `docker run -d -p 3000:3000 <dockerhubusername/repo-name:optional-tag>` eg. `docker run -d -p 3000:3000 eslabbert/sparta-app:v1`.
5. Check [Sparta Provisioning App page](http://localhost:3000/) and [Sparta Provisioning App fibonacci page](http://localhost:3000/fibonacci/10) in your web browser to ensure it is working.
6. Push the image to DockerHub using `docker push <dockerhubusername/repo-name:optional-tag>` eg. `docker push eslabbert/sparta-app:v1`.
<!-- 
Returns following/similar:
The push refers to repository [docker.io/eslabbert/sparta-app]
efb9f13a74fb: Pushed
1643c1c444b7: Pushed
71e05c6296e7: Pushed
47b7f8f10c48: Mounted from library/node
ac19349f690b: Mounted from library/node
d99b6238254e: Mounted from library/node
bb22ae3d4d1e: Mounted from library/node
69d98464f012: Mounted from library/node
4e859b592d91: Mounted from library/node
9973bce96c7e: Mounted from library/node
c7e59965a0b4: Mounted from library/node
v1: digest: sha256:d6c1b0c65a895025559306de4fa2baf42103cb77cd33897d8f59e38a667be0a
e size: 2632
-->
7. To stop and remove container: `docker ps` and copy the container ID then `docker rm <container-id> -f` eg. `docker rm 8a79975b70d8 -f`.

#### <a id="use-a-dockerfile-to-build-a-mongodb-image-for-the-database">Use a Dockerfile to build a MongoDB image for the database</a>

1. Write this to your `Dockerfile`:
```
# Use the official MongoDB image as the base image
FROM mongo:4.4

# Replace the bind IP in the configuration file
RUN sed -i 's/bindIp: 127.0.0.1/bindIp: 0.0.0.0/' /etc/mongod.conf.orig

# Expose the default MongoDB port
EXPOSE 27017

# Start MongoDB with the modified configuration
CMD ["mongod"]
```
2. Build image: `docker build -t eslabbert/mongodb .`
3. Run image: `docker run -d -p 27017:27017 eslabbert/mongodb:latest`
4. Push image: `docker push eslabbert/mongodb`


#### <a id="docker-security">Docker Security</a>

[Docker: Security](https://docs.docker.com/engine/security/#:~:text=Docker%20containers%20are%2C%20by%20default,or%20another%20appropriate%20hardening%20system.)

[Jfrog: 3 steps to secure docker containers](https://jfrog.com/devops-tools/article/3-steps-to-securing-your-docker-container-deployments/#:~:text=Docker%20containers%20provide%20a%20more,a%20significantly%20reduced%20attack%20surface.)

[Best Practice Docker video](https://www.youtube.com/watch?v=8vXoMqWgbQQ)

Use official images and specific versions, with the smallest size necessary (like alpine light-weight distribution) to reduce security vulnerabilities that come from using larger images.

Specify the least privileged user to run the container.

Scan images on DockerHub.

#### <a id="docker-volumes">Docker Volumes</a>

Docker Volumes: Storage of docker images for sharing between others.
Docker Images are immutable.

```
docker volume COMMAND
Commands:
  create      Create a volume
  inspect     Display detailed information on one or more volumes
  ls          List volumes
  prune       Remove all unused local volumes
  rm          Remove one or more volumes
```

#### <a id="docker-commands">Docker Commands</a>

```
Usage:  docker [OPTIONS] COMMAND

A self-sufficient runtime for containers

Common Commands:
  run         Create and run a new container from an image
  exec        Execute a command in a running container
  ps          List containers
  build       Build an image from a Dockerfile
  pull        Download an image from a registry
  push        Upload an image to a registry
  images      List images
  login       Log in to a registry
  logout      Log out from a registry
  search      Search Docker Hub for images
  version     Show the Docker version information
  info        Display system-wide information

Management Commands:
  builder     Manage builds
  buildx*     Docker Buildx (Docker Inc., v0.10.5)
  compose*    Docker Compose (Docker Inc., v2.18.1)
  container   Manage containers
  context     Manage contexts
  dev*        Docker Dev Environments (Docker Inc., v0.1.0)
  extension*  Manages Docker extensions (Docker Inc., v0.2.19)
  image       Manage images
  init*       Creates Docker-related starter files for your project (Docker Inc., v0.1.0-beta.4)
  manifest    Manage Docker image manifests and manifest lists
  network     Manage networks
  plugin      Manage plugins
  sbom*       View the packaged-based Software Bill Of Materials (SBOM) for an image (Anchore Inc., 0.6.0)
  scan*       Docker Scan (Docker Inc., v0.26.0)
  scout*      Command line tool for Docker Scout (Docker Inc., v0.12.0)
  system      Manage Docker
  trust       Manage trust on Docker images
  volume      Manage volumes

Swarm Commands:
  swarm       Manage Swarm

Commands:
  attach      Attach local standard input, output, and error streams to a running container
  commit      Create a new image from a container's changes
  cp          Copy files/folders between a container and the local filesystem
  create      Create a new container
  diff        Inspect changes to files or directories on a container's filesystem
  events      Get real time events from the server
  export      Export a container's filesystem as a tar archive
  history     Show the history of an image
  import      Import the contents from a tarball to create a filesystem image
  inspect     Return low-level information on Docker objects
  kill        Kill one or more running containers
  load        Load an image from a tar archive or STDIN
  logs        Fetch the logs of a container
  pause       Pause all processes within one or more containers
  port        List port mappings or a specific mapping for the container
  rename      Rename a container
  restart     Restart one or more containers
  rm          Remove one or more containers
  rmi         Remove one or more images
  save        Save one or more images to a tar archive (streamed to STDOUT by default)
  start       Start one or more stopped containers
  stats       Display a live stream of container(s) resource usage statistics
  stop        Stop one or more running containers
  tag         Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
  top         Display the running processes of a container
  unpause     Unpause all processes within one or more containers
  update      Update configuration of one or more containers
  wait        Block until one or more containers stop, then print their exit codes

Global Options:
      --config string      Location of client config files (default
                           "C:\\Users\\super\\.docker")
  -c, --context string     Name of the context to use to connect to the
                           daemon (overrides DOCKER_HOST env var and
                           default context set with "docker context use")
  -D, --debug              Enable debug mode
  -H, --host list          Daemon socket to connect to
  -l, --log-level string   Set the logging level ("debug", "info",
                           "warn", "error", "fatal") (default "info")
      --tls                Use TLS; implied by --tlsverify
      --tlscacert string   Trust certs signed only by this CA (default
                           "C:\\Users\\super\\.docker\\ca.pem")
      --tlscert string     Path to TLS certificate file (default
                           "C:\\Users\\super\\.docker\\cert.pem")
      --tlskey string      Path to TLS key file (default
                           "C:\\Users\\super\\.docker\\key.pem")
      --tlsverify          Use TLS and verify the remote
  -v, --version            Print version information and quit

Run 'docker COMMAND --help' for more information on a command.

For more help on how to use Docker, head to https://docs.docker.com/go/guides/
```
Tags:

`-p`: ports
`-d`: detached
`-it`: interactive mode
`sh`: shell
`-f`: force (eg. if running will force it to close and end in order to remove)

Most used commands:

`docker rmi <image-id-or-name> -f`: remove image
`docker rm <container-id-or-name> -f`: remove container
`docker exec -it <container-id> sh`: allows you to log in/interact inside container with shell
`alias docker="winpty docker"`: Resolves TTY issue when trying to log in/interact with container
`docker build -t <image-name>:<optional-tag> <path/to/Dockerfile>`: builds an image from a Dockerfile
`docker run -d -p <host-port-number>:<container-port-number> <image-name-or-id>`: runs container from docker image
`docker push <image-name>`: pushes image to docker repo

## <a id="docker-compose">Docker Compose</a>

Docker Compose is a **tool** that allows you to **define and manage multi-container Docker applications**. It simplifies the process of defining, configuring, and running multiple Docker containers as a cohesive application. It uses a file called `docker-compose.yml` file to do this.

![Docker Compose](/images/docker-compose.png)

**Commands:**

- `docker compose up -d`: starts and manages containers in detached mode (without logs).
- `docker compose up`: starts and manages containers with logs.
- `docker compose down`: stops and removes containers associated.
- `docker compose down -v`: stops and removes containers and volumes associated.

`docker-compose.yml`: YAML script to deploy app & db containers and connect them so that you can see the [app](http://localhost:3000), [fibonacci](http://localhost:3000/fibonacci/10) & [/posts](http://localhost:3000/posts) pages on port 3000. <!-- [db](http://localhost:27017/) says "It looks like you are trying to access MongoDB over HTTP on the native driver port." -->

1. Create a `docker-compose.yml` file containing the following:
```yaml
# version of docker compose file syntax
version: '3.1'
# specifies the services/components block
services:
  # mongodb service (database server)
  mongodb:
    # uses this image to launch a container
    image: eslabbert/mongodb-image:latest
    # container will always be restarted if it exits for any reason to ensure that the service remains running
    restart: always
    # ensures mongodb default port accessible
    ports:
      - 27017:27017

  # sparta-app service (app server)
  sparta-app:
    # uses this image to launch a container
    image: eslabbert/sparta-app:v1
    # container will always be restarted if it exits for any reason to ensure that the service remains running
    restart: always
    # ensures Sparta Provisioning App port 3000 is accessible
    ports:
      - 3000:3000
    # specifies dependency on MongoDB database service
    depends_on:
      - mongodb
    # uses this environment variable to connect app to database and make the /posts page available
    environment:
      - DB_HOST=mongodb:27017/posts
    # installs app dependencies and starts the app with the database connected using shell commands
    command:
      sh -c "npm install && npm start"
```
2. Run with `docker compose up -d` in the directory containing your `docker-compose.yml` file.
3. Check pages in web browser.
4. Remove with `docker compose down`.

## <a id="kubernetes---container-orchestration">Kubernetes - Container Orchestration</a>

Kubernetes, also known as K8s, is an **open-source container orchestration tool/framework**, in other words, a **system** for **automating deployment, scaling, and management of containerized applications**. Developed by Google. It is very powerful and complex.

It groups containers that make up an application into logical units for easy management and discovery. Helping you to manage containerized applications in different environments (i.e. physical, virtual, cloud, or hybrid environments). It supports auto-scaling and has built-in monitoring, you can also configure load-balancing manually. You use CLI tool called kubectl to interact with K8s.

[Kubernetes official page](https://kubernetes.io/)

### <a id="why-use-it">Why use it?</a>

As number of microservices increase in an application it becomes more difficult and complex or even impossible to manage these containers across multiple environments using scripts or self-made tools. This is what brought about container orchestration technologies like K8.

Using K8s/other orchestration tools provides:

- **High Availability** (i.e. no downtime, always user-accessible)
- **Scalability** (i.e. high performance, loads fast and users have high response rate from application) - using labels and selectors
- **Disaster Recovery** (i.e. backup and restore for if an infrastructure has problems like data is lost or the servers explode or something bad happens with the service center the infrastructure has some kind of mechanism to backup and restore the data to the lastest state so the application doesn't lose any data and the containerized app can run from the latest state after recovery)

### <a id="kubernetes-basic-architecture">Kubernetes Basic Architecture</a>

**Components of Kubernetes Architecture (K8s cluster):**

- **Master Node(s)**: connects to, runs and manages worker nodes (much more important than worker nodes, must have a back up in production as if you lose a master node you lose the access to the cluster).
- **Worker Nodes**: have containers or microservices or applications running on them and Kubelet process (which is the primary "node agent"). (bigger, most load, more resources).
- **Virtual Network**: creates one unified, powerful machine from sum of all the resources of the nodes in the cluster. (It assigns each Pod its own IP address, so each pod is its own self-containing server with its own IP address and they communicate using those internal IP addresses).

![K8s Architecture](/images/kubernetes-architecture.png)

**Master Node Processes:**

- **API server**, which is the entry point to the K8s cluster for UI, API and CLI. (Kubernetes Configuration, in declarative form (meaning K8 will try to meet the requirements by comparing desired and actual state), goes through this. Requests must be in YAML or JSON format).
- **Controller manager**, which keeps track of what is happening in cluster (if repairs are needed or container dies and needs to be restarted etc.).
- **Scheduler**, an intelligent process that decides which node the next container should be scheduled on, based on the internal resources on the worker nodes and the load that container needs, i.e. schedules containers on different nodes based on the work load and available server resources on each node/ensures Pods placement.
- **etcd**, key-value storage that holds, at any time, the current state (i.e. a snapshot) of the Kubernetes cluster (has the config data and status data of each node and container). Using this snapshot you can recover the whole state of the cluster.

**Basic Concepts:**

![K8s Concepts](/images/kubernetes-concepts.png)

- **Pod** = ephemeral component of Kubernetes that is a wrapper for a container(s) that manages the container(s) running inside itself without our intervention. (e.g. if a container dies it will restart it automatically)

Each worker node can have multiple pods. Each pod could have multiple containers, good practice is to have one application (like database, app, server, message broker) per pod (an app with helper containers if necessary).
We do not create or configure containers inside Kubernetes cluster, we only deal with the pods which is an abstraction layer over containers.

Ephemeral = can die frequently.

Each time a pod dies it is restarted, creating a new pod, assigned a new IP address. So these pods have dynamic IP addresses, which is inconvenient if these pods need to communicate with other pods.

- **Service** = **permanent IP address**, which is an alternative or substitute to the pod's dynamic IP addresses, which sit in front of each pod and remains constant (as the lifecycle is not tied to the pod's) to allow communication between pods. Also works as a **load balancer**.

### <a id="k8-self-healing">K8 Self-healing</a>

A ReplicaSet then fulfills its purpose by creating and deleting Pods as needed to reach the desired number.

### <a id="k8-commands">K8 Commands</a>

[K8 Configuration docs](https://kubernetes.io/docs/concepts/configuration/)

Check version of Kubernetes `kubectl version --client` (Note: Will show this `WARNING: This version information is deprecated and will be replaced with the output from kubectl version --short.`.You can ignore this warning. You are only checking the version of kubectl that you have installed.)

`kubectl get svc`: get service info.

`kubectl get deployment <name-deployment>` or `kubectl get deploy`: deployment info, which can be for a specific deployment or all deployments.

`kubectl create -f <.yml>`: runs .yml file to create K8s cluster (`-f` = file).

`kubectl get pods`: get pods info.

`kubectl get rs`: get replica set info.

`kubectl delete pod <pod-name>`: deletes pod, but as it is self-healing it spins up a new pod immediately.

`kubectl edit deploy <name-deployment>`: opens deployment file in notepad to make changes, save and exit, without taking server down.

`kubectl describe deploy <name-deployment>`: human-readable logs on deployment.

`kubectl describe svc <name-svc>`: human-readble logs on service.

`kubectl delete deployment <deployment-name>`: delete deployment.

`kubectl delete service <service-name>`: delete service.

`kubectl logs -p <pod-name>`: get a specific pod's logs.

### <a id="k8-deploy-sparta-app-cluster">K8 Deploy Sparta App Cluster</a>

![K8s Cluster Sparta App](/images/k8s-cluster.png)

1. Ensure a cluster is running with `kubectl get service`.
2. Create `app-deployment.yml` file and `app-service.yml` file.
`app-deployment.yml`:
```yaml
# api used for deployment
apiVersion: apps/v1
# pod - service what kind of serivce/object
kind: Deployment
# case insensitive metadata
metadata:
  # name of deployment
  name: sparta-app-deployment
  labels:
    app: sparta-app
# specifications for deployment
spec:
  # creates 3 replicas (pods) of this set with pods/instances
  replicas: 3
  # connection with labels
  selector:
    matchLabels:
      # looks for label & match with k8 services
      app: sparta-app
  # template to use its label for k8 service to launch
  template:
    metadata:
    # label
      labels:
        # label connects to service or any other k8 components
        app: sparta-app
    # define container specifications
    spec:
      containers:
      - name: sparta-app
        # image of app from DockerHub
        image: eslabbert/sparta-app:v1
        ports:
        # exposes this port
        - containerPort: 3000
# Only add the following if also launching database:
        # adds the environment variable to connect with mongodb
        env:
        - name: DB_HOST
          # references the internal mongo service IP
          value: mongo-service:27017/posts
        command: ["sh", "-c"]
        args:
          - |
            cd /app
            npm stop --if-present
            node seeds/seed.js
            npm restart app.js --update-env
```
`app-service.yml`:
```yaml
# select type of API version
apiVersion: v1
# type of service/object
kind: Service
# metadata for name
metadata:
  # name of service
  name: sparta-app-svc
  # sre - keep private for each team, but as not in production use default
  namespace: default
# specification to include ports selector to connect to the
spec:
  # create NodePort type of deployment for external access
  # load balancer for local cluster
  type: NodePort
  # define selector and label to connect nginx deployment
  selector:
    # label connect to nginx deployment
    app: sparta-app
  # port mapping
  ports:
  - protocol: TCP
    # range 30000-32767 to be accessed externally
    nodePort: 30001
    # internal communicating ports
    port: 3000
    targetPort: 3000
```
3. Run deployment with `kubectl create -f app-deployment.yml`, then run service with `kubectl create -f app-service.yml`.
4. Check web browser for http://localhost:\<specified-port-between-30000-32767-in-service.yml\>.

### <a id="k8-deploy-mongodb-and-connect-to-app-cluster">K8 Deploy MongoDB and connect to App Cluster</a>

1. Ensure a cluster is running with `kubectl get service`. <!-- Create encoded username and password, respectively: `echo -n admin | base64` and `echo -n password | base64` -->
2. Create `mongo-deployment-and-service.yml` file.
`mongo-deployment-and-service.yml`:
```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: mongo-deployment
  labels:
    # label selector
    db: mongo
spec:
  replicas: 1
  selector:
    matchLabels:
      db: mongo
  template:
    metadata:
      labels:
        db: mongo
    spec:
      containers:
      - name: mongodb
        image: eslabbert/mongodb-image:latest
        ports:
        - containerPort: 27017
        env:
        - name: DB_HOST
          value: mongo-service:27017/posts
---
apiVersion: v1
kind: Service
metadata:
  name: mongo-service
  namespace: default
spec:
  selector:
    # label connects service to pods with same label (send requests to pods)
    db: mongo
  ports:
    - protocol: TCP
      # Service port, accessible at this port
      port: 27017
      # same as containerPort of deployment/stateful set
      targetPort: 27017
```
3. Run deployment and service `kubectl create -f mongo-deployment-and-service.yml` then run the app's deployment and service files.
4. Check web browser for [Sparta Provisioning Test App/posts page](http://localhost:\30001/posts).

Note: To delete all these services and deployments: `kubectl delete deploy sparta-app-deployment mongo-deployment | kubectl delete svc sparta-app-svc mongo-service`.
<!-- `cd Documents/tech_230_sparta/Microservices/kubernetes`, then to create services and deployments: `kubectl create -f mongo-deployment-and-service.yml` and `kubectl create -f sparta-app-deployment-and-service.yml`
-->