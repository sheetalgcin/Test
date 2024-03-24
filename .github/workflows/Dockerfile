# Use Node.js Docker image as the base
FROM node:latest

# Unset NPM_CONFIG_PREFIX
RUN unset NPM_CONFIG_PREFIX

# Set environment variables for npm
ENV NODE_ENV=production \
    NPM_CONFIG_PREFIX=/home/node/.npm-global

# Set NODE_VERSION environment variable
ENV NODE_VERSION=21.3.0

# Install nvm (Node Version Manager)
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Set NVM environment variables and add to .bashrc
ENV NVM_DIR=/root/.nvm
RUN echo 'export NVM_DIR="/root/.nvm"' >> /root/.bashrc

# Source NVM script
RUN . $NVM_DIR/nvm.sh && \
    nvm install $NODE_VERSION && \
    nvm use $NODE_VERSION 

# Install or update npm
RUN npm install -g npm@8.5.5

# Clean npm cache
RUN npm cache clean --force

# Display Node.js version installed via NVM
RUN . $NVM_DIR/nvm.sh && node -v

# Display npm version installed via NVM
RUN . $NVM_DIR/nvm.sh && npm -v

#WORKDIR /app
# Copy shell script folder
#COPY . .
# Grant executable permissions to token-setup.sh (if necessary)
# Make sure token-setup.sh exists in the same directory as the Dockerfile
#RUN chmod +x entry.sh

# Specify the command to run when the container starts
#CMD ["bash", "./entry.sh"]

# Copy the file you want to print into the container
#COPY  ~/.knrc /keplerEnv/knrc

# Run a shell command to print the file content
#CMD ["bash", "-c", "cat /keplerEnv/knrc"]

# Run a shell command to install kepler packages
