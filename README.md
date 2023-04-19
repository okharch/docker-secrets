# Docker Secrets Demo

This project demonstrates how to create a simple Docker service in Golang that has access to Docker secrets. 

## Files

- `Dockerfile`: Builds a small, minimal Docker image for the service that includes only the binary and no build tools.
- `main.go`: Contains the code for the service that reads a secret named `MySecret` from the Docker secrets store and prints its value to the logs every 5 seconds.
- `demo-run.sh`: Provides an example of how to build and run the Docker service using Docker secrets.

## Usage

To run the demo, follow these steps:

1. Clone the repository to your local machine.
2. Build the Docker image using the Dockerfile.
3. Create a Docker secret named `MySecret` with a value of your choice.
4. Create a Docker service using the image and secret.
5. View the logs of the service to see the output.

When you're done, remove the Docker service.

This demo provides a simple example of how to create a Docker service in Golang that can securely access secrets stored in Docker's secrets store.

