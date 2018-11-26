FROM golang:onbuild

WORKDIR /go/src/app
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

RUN go build -o main . 

CMD ["/app/main"]