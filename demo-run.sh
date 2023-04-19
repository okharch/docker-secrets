docker service rm my-service
printf "This is a secret" | docker secret create MySecret -
docker build -t my-service .
docker service  create --name my-service --secret MySecret my-service
docker service logs -f my-service
