#install python
FROM python:3.9-slim

#set working directory
WORKDIR /app

# Copy into the container at /app
COPY . /app

# Install packages 
RUN pip install --no-cache-dir -r requirements.txt

# port 5000
EXPOSE 5000

# env
ENV NAME World

# Run app.py
CMD ["python", "app.py"]



