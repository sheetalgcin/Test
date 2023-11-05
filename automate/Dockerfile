# Use an official Python runtime as a parent image
FROM python:3.11

# Create app workspace
RUN mkdir /workspace
COPY * ./workspace/

# Update pip and setuptools
RUN pip install --no-cache-dir --upgrade pip setuptools

# Create a virtual environment
RUN python -m venv venv

# Activate the virtual environment
RUN . venv/bin/activate
RUN pip install --no-cache-dir robotframework 

# Install packages within the virtual environment
RUN pip install --no-cache-dir robotframework robotframework-rebot


# Set the working directory in the container
WORKDIR /app

# Copy entry.sh into the container
COPY entry.sh /entry.sh
RUN chmod +x /entry.sh

CMD ["/entry.sh"]
# Run command in container and get results under automate/output folder
#CMD ["robot", "--outputdir","output","--output", "output.xml", "--xunit", "res.xml", "Tests/verify"]
