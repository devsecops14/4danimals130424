# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install flask flask_sqlalchemy


# Make port 8080 available to the world outside this container
EXPOSE 8080

# Define environment variable for the database path
#ENV DATABASE_URL /data/4danimals.db
CMD ["python3", "create_sql_db_using_python.py" ]
# Run app.py when the container launches
CMD ["python3", "app.py", "--host=0.0.0.0", "--port=8080"]
#CMD ["python3" ,"create_sql_db_using_python.py","python3" ,"app.py" ,""--host=0.0.0.0" ,"--port=8080"]
