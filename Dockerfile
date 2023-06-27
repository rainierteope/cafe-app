# Use python v3.12 alpine
FROM python:3.12.0b3-alpine3.18

# Create app directory
WORKDIR /app

# Install app dependencies
RUN pip install flask

# Bundle app source
COPY . .

# Expose port 5000
EXPOSE 5000

# Run flask in port 5000
CMD [ "flask", "run","--host","0.0.0.0","--port","5000"]