# Use an official Python runtime as a parent image
FROM python:3.11

# Create app workspace
RUN mkdir /workspace
COPY * ./workspace/

RUN pip install --no-cache-dir -r  requirements.txt
RUN python -m pip install --upgrade pip
RUN pip install pipenv && pipenv install --dev --system --deploy

# Define the entry point to run Robot Framework
CMD ["python", "--version"]
WORKDIR /app

# Copy entry.sh into the container
COPY entry.sh /entry.sh
RUN chmod +x /entry.sh

CMD ["/entry.sh"]
# Run command in container and get results under automate/output folder
#CMD ["robot", "--outputdir","output","--output", "output.xml", "--xunit", "res.xml", "Tests/verify"]
