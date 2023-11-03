# Use an official Python runtime as a parent image
FROM python:3.11

# Create app workspace
RUN mkdir /workspace
COPY * ./workspace/

# install the repo requirements for current run
RUN pip install --no-cache-dir -r /workspace/requirements.txt

# Define the entry point to run Robot Framework
CMD ["python", "--version"]

# Set the working directory in the container

RUN chmod +x  ./automate/entry.sh
WORKDIR /app
# Run command in container and get results under automate/output folder
#CMD ["robot", "--outputdir","output","--output", "output.xml", "--xunit", "res.xml", "Tests/verify"]
CMD ["./entry.sh"]
