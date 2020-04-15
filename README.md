# Description

Container with JDK and SBT installed for building Scala / Spark applications.

# Usage

Tagged as "java-`JAVA_VERSION`_sbt-`SBT_VERSION`". 

### In Dockerfile:

```
FROM mooseconsulting/sbt:java-1.8.0_sbt-1.3.9
RUN mkdir /root/app
WORKDIR /root/app
ADD build.sbt .
ADD project ./project
ADD src ./src
RUN sbt assembly
```

### Using Docker run 

In project directory: 

```
docker run --name sbt-build -it --mount type=bind,source="$(pwd)",target=/root/app -w /root/app mooseconsulting/sbt:java-1.8.0_sbt-1.3.9 sbt assembly
```

Since the project directory is mounted, build artifacts will be placed in that directory. 
