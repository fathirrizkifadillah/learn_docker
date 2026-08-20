# FROM Instruction

docker build -t fathirrzkii/belajar-docker from

docker image ls

# RUN Instruction

docker build -t fathirrzkii/belajar-docker:run run

docker build -t fathirrzkii/belajar-docker:run run --progress=plain --no-cache

# COMMAND Instuction

docker build -t fathirrzkii/belajar-docker:command command

docker image inspect fathrrzkii/belajar-docker:command

docker container create --name command fathirrzkii/belajar-docker:command

docker container start command

docker container logs command

# LABEL Instruction

docker build -t fathirrzkii/belajar-docker:label label

docker image inspect fathirrzkii/belajar-docker:label

# ADD Instruction
docker build -t fathirrzkii/belajar-docker:add add

docker container create --name add fathirrzkii/belajar-docker:add

docker container start add

docker container logs add

# COPY Instruction
docker build -t fathirrzkii/belajar-docker:copy copy

docker container create --name copy fathirrzkii/belajar-docker:copy

docker container start copy

docker container logs copy

# .dockerignore

docker build -t fathirrzkii/belajar-docker:ignore ignore

docker container create --name ignore fathirrzkii/belajar-docker:ignore

docker container start ignore

docker container logs ignore