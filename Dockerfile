# Parte 1: Construir la imagen de la API web

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

COPY . ./

RUN dotnet restore
RUN dotnet tool install --global dotnet-ef
ENV PATH="$PATH:/root.dotnet/tools"

CMD dotnet run --urls=http://0.0.0.0:5000