# Use the official image as a parent image
FROM mariadb:latest

# Set the working directory
WORKDIR /usr/src/app

# Copy the scripts into the container
COPY . .

# Run the scripts when the container launches
ENTRYPOINT [ "./entrypoint.sh" ]
