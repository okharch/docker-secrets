# Build stage
FROM golang:latest AS build
WORKDIR /app
COPY main.go go.mod .
RUN go build -o app .

# Final stage
FROM scratch
COPY --from=build /app/app /app/app
CMD ["/app/app"]
