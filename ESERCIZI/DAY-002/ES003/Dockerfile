# Dockerfile Multistages
FROM golang:1.25 AS build

WORKDIR /src

COPY <<EOF /src/main.go
package main

import "fmt"

func main() {
  fmt.Println("hello, world")
}
EOF

# COPY ./test.go /src/main.go

RUN go build -o /bin/hello ./main.go


FROM scratch
COPY --from=build /bin/hello /bin/hello
CMD ["/bin/hello"]



