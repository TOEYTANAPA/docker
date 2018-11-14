# Use an official Python runtime as a parent image
FROM python:3.6

# Set the working directory to /app
WORKDIR /hello

# Copy the current directory contents into the container at /app
COPY . /hello

# Install any needed packages specified in requirements.txt
RUN pip3 install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 8888

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]