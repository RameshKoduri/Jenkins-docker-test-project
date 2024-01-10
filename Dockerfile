# Use the official Tomcat image as the base image
FROM tomcat:9.0

# Remove the default Tomcat applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your Java .war file into the Tomcat webapps directory
COPY helloworld.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]

