FROM alpine:3

RUN mkdir hello
ADD text/world.txt hello
ADD text/fathir.txt hello
ADD text/ton.txt hello

# OR
ADD text/*.txt hello

CMD cat "hello/fathir.txt"