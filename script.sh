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

# EXPOSE Instruction

docker build -t fathirrzkii/belajar-docker:expose expose

docker image inspect fathirrzkii/belajar-docker:expose 

docker container create --name expose -p 8080:8080 fathirrzkii/belajar-docker:expose

docker container start expose

docker container logs expose

docker container stop expose

# ENV Instruction
docker build -t fathirrzkii/belajar-docker:env env

docker image inspect fathirrzkii/belajar-docker:env

docker container create --name env --env APP_PORT=9090 -p 9090:9090 fathirrzkii/belajar-docker:env

docker container start env

docker container ls

docker container logs env

docker container stop env

# VOLUME Instruction
docker build -t fathirrzkii/belajar-docker:volume volume

docker image inspect fathirrzkii/belajar-docker:volume

docker container create --name volume -p 8080:8080 fathirrzkii/belajar-docker:volume

docker container start volume

docker container logs volume

docker container inspect volume

# e783e6f16bf4f75db07093590c55857e82a3148bf0ddc99594caf5ee91d008dc

docker volume ls

# WORKDIR Instruction
docker build -t fathirrzkii/belajar-docker:workdir workdir

docker container create --name workdir -p 8080:8080 fathirrzkii/belajar-docker:workdir

docker container start workdir

docker container exec -i -t workdir /bin/sh

docker container stop workdir

# USER Instruction

docker build -t fathirrzkii/belajar-docker:user user

docker container create --name user -p 8080:8080 fathirrzkii/belajar-docker:user

docker container start user

docker container exec -i -t user /bin/sh

docker container stop user

# ARG Instruction

docker build -t fathirrzkii/belajar-docker:arg arg --build-arg app=ton

docker container create --name arg -p 8080:8080 fathirrzkii/belajar-docker:arg

docker container start arg

docker container exec -i -t arg /bin/sh

docker container stop arg