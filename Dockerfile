# Use the official Python 3.11 image as the base image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the content of your app into the container
COPY . /app

# Install required Python libraries
RUN pip install --no-cache-dir -r requirements.txt

# Expose the default Streamlit port
EXPOSE 8501

# Set the command to run your Streamlit app when the container starts
CMD ["streamlit", "run", "aipy.py"]
