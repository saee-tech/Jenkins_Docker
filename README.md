![image](https://github.com/user-attachments/assets/fbf2b850-9229-408c-bdde-fa173b0e0b59)# Jenkins_Docker
Here’s a Dockerfile to install and run Jenkins (LTS version) using a base image. Jenkins runs on port 8080, and this setup uses the official LTS Debian-based Jenkins image as a base to simplify the build.

Build and Run the docker file 

# Step 1: Build the image
docker build -t my-jenkins .

# Step 2: Run the Jenkins container
docker run -d -p 8080:8080 -p 50000:50000 --name jenkins-server my-jenkins

Access Jenkins
Once Jenkins is running:

Visit: http://localhost:8080

For initial setup, use the admin password located at:
docker exec jenkins-server cat /var/jenkins_home/secrets/initialAdminPassword





