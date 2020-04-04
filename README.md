# Andrey039_microservices
Andrey039 microservices repository

+ * Опишите создаваемый объект Secret в виде Kubernetesманифеста.

gcloud beta container clusters update reddit --zone=europe-west1-b --update-addons=NetworkPolicy=ENABLED

gcloud beta container clusters update reddit --zone=europe-west1-b --enable-network-policy

 gcloud compute disks create --size=25GB --zone=europe-west1-b reddit-mongo-disk