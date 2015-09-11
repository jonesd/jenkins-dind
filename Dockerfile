FROM jenkins

USER root

###############################################################
# Docker in Docker https://github.com/jpetazzo/dind 
    
# Install Docker from Docker Inc. repositories.
RUN curl -sSL https://get.docker.com/ubuntu/ | sh

# Install the magic wrapper.
ADD wrapdocker /usr/local/bin/wrapdocker
RUN chmod +x /usr/local/bin/wrapdocker

# Define additional metadata for our image.
VOLUME /var/lib/docker

#
###############################################################


# wrapdocker has been modified to launch Jenkins via the installed run.sh script
CMD ["wrapdocker"]

