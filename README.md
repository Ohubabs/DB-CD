# DB-CD

# DragonBall Project Part 6

## Project Objective

For this project, set up a pipeline to deploy a stateless Java Springboot app connected to MongoDB NoSQL database into the DB cluster running on a Fargate node using Terraform with the Kubernetes and Helm Providers.

## Prerequisites

- MongoDB deployed in DB Cluster (To set MongoDB in the DB cluster, check Project part 5: https://github.com/Ohubabs/DB-Mongo.git).
- Prior knowledge of Terraform, Kubernetes, and Helm, application deployment, charts.

### Step 1: Go to New Item” from the Dashboard, select “Pipeline”, and name it “Springapp”.

![Screenshot 2024-06-24 at 3 04 32 PM](https://github.com/user-attachments/assets/718a3ff0-fa52-4eab-a937-3c7dc8997c6c)

### Step 2: Go to “Configuration”, Select “Poll SCM” and Enter the details for your GitHub repo & Jenkinsfile or copy and paste the Jenkinsfile in this repo.

![image](https://github.com/user-attachments/assets/e74fe561-2e4b-42b3-8843-e2d8446692a0)

#### Notes: -

- To enter details for your MongoDB database, edit the var.tf file to fill in the secret in the krillin.tf file.
- If you change the name for the secret with your MongoDB credentials, you must also change it in the values file for the customized helm chart via the spring-mongo.yml file.
- To expose your application with SSL encryption to the internet, you must edit the spring-issuer.yml file with your email, custom URLs for your site with your AWS registered domain name, and your AWS hosted zone ID. In addition, you will need your AWS credentials, which were saved in a secret made during Project Part 1 (ref: https://github.com/Ohubabs/DB-Pipeline.git)

### Step 3: Click “Build now” to run your pipeline with Maven, SonarQube, and Docker to Build, Test, Containerize, and Push your Java Springboot Web app to DockerHub.

![Screenshot 2024-06-24 at 6 27 18 PM](https://github.com/user-attachments/assets/24e6bbd6-5375-479a-8718-76b1d41e081e)

![Screenshot 2024-06-24 at 6 27 26 PM](https://github.com/user-attachments/assets/6de298f5-c8c2-4c76-9206-f1b38f2e7d2f)

![Screenshot 2024-06-24 at 6 27 32 PM](https://github.com/user-attachments/assets/45269973-6fa4-44de-839f-5928f30b1421)

![Screenshot 2024-06-24 at 6 28 58 PM](https://github.com/user-attachments/assets/564b287b-514d-436a-bbea-1a9a960c5eec)

![Screenshot 2024-06-24 at 6 38 11 PM](https://github.com/user-attachments/assets/8d5c4460-7d03-4784-9c3e-70593cca0580)

![Screenshot 2024-06-24 at 6 38 28 PM](https://github.com/user-attachments/assets/28ab1f83-1e4f-419a-9ad7-63fbd6b59bf9)

![Screenshot 2024-06-24 at 6 39 00 PM](https://github.com/user-attachments/assets/b1774b9b-b3ba-4040-aa4d-dd33111d73b0)

![Screenshot 2024-06-25 at 7 10 13 PM](https://github.com/user-attachments/assets/4f8aa4f2-5344-4936-8996-3b231837189d)

![Screenshot 2024-06-25 at 7 24 43 PM](https://github.com/user-attachments/assets/abba8171-359e-4c1a-ae42-5af367d27c72)


![Screenshot 2024-06-25 at 6 42 42 PM](https://github.com/user-attachments/assets/b37090d8-78f5-4ce0-a12b-bfe7127e1006)




