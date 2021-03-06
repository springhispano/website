FROM jojomi/hugo:0.57.2 AS build-env

WORkDIR /app
COPY ./ ./

RUN sh -c './build.sh'

# build runtime image
FROM nginx:1.19.1-alpine

ENV TZ=America/Mexico_City
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

LABEL maintainer="Domingo Suarez Torres <domingo.suarez@gmail.com>"

# TODO: https://github.com/springhispano/website/issues/9
#COPY ./conf.d/default.conf /etc/nginx/conf.d/

COPY --from=build-env /app/public/ /usr/share/nginx/html