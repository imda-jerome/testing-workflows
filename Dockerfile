# Container image that runs your code
FROM ubuntu:20.04

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh entrypoint.sh

# Set executable permissions for the entrypoint script
RUN chmod +x entrypoint.sh

RUN echo $PATH

RUN echo TEST

RUN ls -l

# Code file to execute when the docker container starts up (`entrypoint.sh`)
# ENTRYPOINT ["bash"]

#CMD ["bash entrypoint.sh"]