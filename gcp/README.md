# Google Cloud Help
- get google-cloud-sdk from here
```
https://cloud.google.com/sdk/docs/quickstart-linux
```

- or use direct link 64 bit (look for latest one in above step)
```
https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-247.0.0-linux-x86_64.tar.gz
```

- copy it to desired folder and extract
```
tar zxvf [ARCHIVE_FILE] google-cloud-sdk
```

- run installation script (optional cause you can invoke all actions through full path)
```
./google-cloud-sdk/install.sh
```

- install component (optional)
```
gcloud components install COMPONENT_ID
```

- remove component (optional)
```
gcloud components remove COMPONENT_ID
```
- components
```
──────────────────────────────────────────────────────┬──────────────────────────
                         Name                         │            ID
──────────────────────────────────────────────────────┼──────────────────────────
 App Engine Go Extensions                             │ app-engine-go
 Cloud Bigtable Command Line Tool                     │ cbt
 Cloud Bigtable Emulator                              │ bigtable
 Cloud Datalab Command Line Tool                      │ datalab
 Cloud Datastore Emulator                             │ cloud-datastore-emulator
 Cloud Datastore Emulator (Legacy)                    │ gcd-emulator
 Cloud Firestore Emulator                             │ cloud-firestore-emulator
 Cloud Pub/Sub Emulator                               │ pubsub-emulator
 Cloud SQL Proxy                                      │ cloud_sql_proxy
 Emulator Reverse Proxy                               │ emulator-reverse-proxy
 Google Cloud Build Local Builder                     │ cloud-build-local
 Google Container Registry's Docker credential helper │ docker-credential-gcr
 gcloud Alpha Commands                                │ alpha
 gcloud Beta Commands                                 │ beta
 gcloud app Java Extensions                           │ app-engine-java
 gcloud app PHP Extensions                            │ app-engine-php
 gcloud app Python Extensions                         │ app-engine-python
 gcloud app Python Extensions (Extra Libraries)       │ app-engine-python-extras
 kubectl                                              │ kubectl
 BigQuery Command Line Tool                           │ bq
 Cloud SDK Core Libraries                             │ core
 Cloud Storage Command Line Tool                      │ gsutil
──────────────────────────────────────────────────────┴──────────────────────────
```
- make sure you have a project in google cloud (if not create one)
```
https://console.cloud.google.com
```
- initialize sdk (it will for instance allow ssh access to your gce instances)
```
gcloud init
```
- it will prompt for credentials over browser or console 
- allow gcloud sdk to access what it needs
- select project to use (back in terminal)
- select default zone to use - it may be changed later with
```
gcloud config set compute/zone NAME
```
- you may change default region with
```
gcloud config set compute/region NAME
```
- all above will append gcloud lines to run on bash startup
```
/home/youruser/.bashrc
```
- gcloud configuration file will live here
```
/home/youruser/.boto
/home/youruser/.config/gcloud/*
```
- for help run
```
gcloud help config
gcloud topic configurations
gcloud --help
gcloud topic --help
gcloud help [ANY COMMAND]
```
- show useful info about gcloud
```
gcloud info
```
- ssh to your google compute engine instance
```
gcloud compute ssh your-gce-instance
```
- if you use private docker registry on google cloud you may need
```
gcloud auth configure-docker
```
- to push image to gcloud use
```
docker tag your_local_image GOOGLE_HOST:YOUR_PROJECT_NAME:YOUR_IMAGE_NAME
docker push GOOGLE_HOST:YOUR_PROJECT_NAME:YOUR_IMAGE_NAME
```
- to pull image from gcloud use
```
docker pull GOOGLE_HOST:YOUR_PROJECT_NAME:YOUR_IMAGE_NAME
```
- sometimes you may find it usefull to create json based authentication
- create json key for service account in gcloud under `iam-admin/serviceaccounts` and download json file
- grant newly created service account desired priviliges for instance under `storage/browser` in `permissions` tab
- for docker registry it is enough to assign `Storage Object Viewer` role
- now from within instance you may use to login and be able to pull from private docker registry
```
json_key_file.json | sudo docker login -u _json_key --password-stdin https://GOOGLE_HOST
```
