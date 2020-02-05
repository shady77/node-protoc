FROM node:latest
ARG protoc_url=https://github.com/protocolbuffers/protobuf/releases/download/v3.11.3/protoc-3.11.3-linux-x86_64.zip
ARG grpc_web_url=https://github.com/grpc/grpc-web/releases/download/1.0.7/protoc-gen-grpc-web-1.0.7-linux-x86_64
RUN curl -L ${protoc_url} --output protoc.zip && unzip protoc.zip -d /usr && rm protoc.zip
RUN curl -L ${grpc_web_url} --output /usr/bin/protoc-gen-grpc-web && chmod 777 /usr/bin/protoc-gen-grpc-web
WORKDIR /app
