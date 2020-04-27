FROM openjdk:15-slim
ARG CMAK_VERSION=3.0.0.4
ADD https://github.com/yahoo/CMAK/releases/download/${CMAK_VERSION}/cmak-${CMAK_VERSION}.zip /cmak-${CMAK_VERSION}.zip
RUN apt-get update && apt-get install -y unzip
RUN unzip /cmak-${CMAK_VERSION}.zip
WORKDIR /cmak-${CMAK_VERSION}
EXPOSE 9000
CMD ["bin/cmak", "-Dhttp.port=9000"]
