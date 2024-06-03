# Use an official Python runtime as a parent image
FROM python:3.10

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app/

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Expose port 8000 to allow communication to/from server
EXPOSE 8000

# Run Django server when the container launches
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
