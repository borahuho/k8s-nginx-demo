FROM nginx:stable

#Install git
RUN apt-get update \
    && apt-get install -y git \
	&& apt install -y net-tools \
	&& apt install -y vim \
	&& apt install -y nano
	
COPY src/ /usr/share/nginx/html
EXPOSE 80
