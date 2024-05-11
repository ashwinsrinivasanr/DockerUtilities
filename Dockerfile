FROM ubuntu:latest

WORKDIR /app

RUN apt-get update

RUN apt-get install -y nodejs

RUN apt-get install -y npm

RUN apt-get install -y dotnet-sdk-8.0

ENV PATH="${PATH}:/root/.dotnet/tools"

RUN dotnet tool install --global Microsoft.PowerApps.CLI.Tool
