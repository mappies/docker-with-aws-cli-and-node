FROM node:latest

# Install dependencies
RUN apt-get update
RUN apt-get install groff less python python-dev python-setuptools jq -y
RUN easy_install pip

# Install Docker
RUN curl -sSL https://get.docker.com/ | sh
RUN pip install docker-compose

# Install AWS CLI
RUN pip install awscli

# Clean up
RUN apt-get clean