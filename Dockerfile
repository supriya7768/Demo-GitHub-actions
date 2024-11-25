FROM postman/newman:latest
WORKDIR /etc/newman

# Copy Collection and Environment files
COPY postman_collection.json .
COPY postman_environment.json .

# Default command
CMD ["run", "postman_collection.json", "--environment", "postman_environment.json", "--reporters", "cli,json", "--reporter-json-export", "newman-report.json"]
