FROM alpine:3

RUN mkdir hello
COPY text/world.txt hello
COPY text/fathir.txt hello
COPY text/ton.txt hello

# OR
COPY text/*.txt hello

CMD cat "hello/world.txt"