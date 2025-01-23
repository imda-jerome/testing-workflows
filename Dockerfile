# Container image that runs your code
FROM alpine:3.10

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh .

# Set executable permissions for the entrypoint script
RUN chmod +x entrypoint.sh

RUN echo TEST

RUN ls -l

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]