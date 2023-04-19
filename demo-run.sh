# make sure to remove existing service to run the latest
docker service rm my-service
# create secret in a case if it does not exists
printf "This is a secret" | docker secret create MySecret -
# build docker image my-service
docker build -t my-service .
# creates service my-service from image my-service and runs it
docker service  create --name my-service --secret MySecret my-service
# output logs of the service
docker service logs -f my-service
