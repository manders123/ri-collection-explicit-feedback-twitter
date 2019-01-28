#build stage
FROM golang:1.9
WORKDIR /go/src/app
COPY . .
RUN go get -d -v ./...
RUN go install -v ./...

EXPOSE 9624
CMD ["app"]