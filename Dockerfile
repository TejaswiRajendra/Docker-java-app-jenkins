# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Java file into the container
COPY Main.java .

# Compile the Java program
RUN javac Main.java

# Run the Java application
CMD ["java", "Main"]

