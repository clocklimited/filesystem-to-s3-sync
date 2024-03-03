# Use Alpine Linux
FROM alpine:latest

# Install rclone
RUN apk --no-cache add rclone

# Copy the sync script into the container
COPY sync.sh /usr/local/bin/sync.sh

# Make the script executable
RUN chmod +x /usr/local/bin/sync.sh

# Set the default command to execute
CMD ["/usr/local/bin/sync.sh"]
