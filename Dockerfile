FROM tomcat:9.0-jdk8-openjdk-slim

# Expose port 8082 (host) mapped to 8080 (container default)
EXPOSE 8080

# Deploy the .war to Tomcat’s webapps directory
COPY target/petclinic.war /opt/apache-tomcat-9.0.65/webapps/webapps/petclinic.war

