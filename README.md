# Micro-services Architecture

- [Micro-services Architecture](#micro-services-architecture)
  - [What is a Micro-services Architecture?](#what-is-a-micro-services-architecture)
  - [Use cases for a Micro-services Architecture](#use-cases-for-a-micro-services-architecture)
  - [Who uses a Micro-services Architecture?](#who-uses-a-micro-services-architecture)
  - [Micro-services vs Monolith vs Two-tier architectures](#micro-services-vs-monolith-vs-two-tier-architectures)
  - [Docker](#docker)
    - [Installing Docker](#installing-docker)
    - [Using Docker](#using-docker)


## <a id="what-is-a-micro-services-architecture">What is a Micro-services Architecture?</a>

Microservices architecture is an architectural style that **structures an application as a collection of small, loosely coupled, and independently deployable services**. In this approach, an application is decomposed into a set of smaller services, each responsible for a specific business capability.

**Each microservice** is **self-contained** and **can be developed, deployed, and scaled independently of the others**. They communicate with each other through well-defined APIs (Application Programming Interfaces) such as REST (Representational State Transfer) or messaging protocols like AMQP (Advanced Message Queuing Protocol).

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

## <a id="use-cases-for-a-micro-services-architecture">Use cases for a Micro-services Architecture</a>

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

## <a id="who-uses-a-micro---services-architecture">Who uses a Micro-services Architecture?</a>

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

### <a id="using-docker">Using Docker</a>