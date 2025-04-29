# Use the official Jenkins LTS base image
FROM jenkins/jenkins:lts

# Switch to root user to install extra packages or perform configurations
USER root

# Install any additional tools (optional)
RUN apt-get update && \
    apt-get install -y sudo curl vim && \
    apt-get clean

# Add Jenkins user to the sudoers (optional)
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

# Expose Jenkins default port
EXPOSE 8080

# Expose JNLP port for agents
EXPOSE 50000

# Switch back to Jenkins user
USER jenkins

# Jenkins is automatically started by the base image using /usr/bin/jenkins.sh
