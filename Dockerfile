FROM maven:3.8.3-openjdk-17

WORKDIR /workdir

COPY . .

RUN mvn package

ENTRYPOINT [ "/bin/bash", "-c", "java -jar target/json-web-key-generator-0.9-SNAPSHOT-jar-with-dependencies.jar" ]
