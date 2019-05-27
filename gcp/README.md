# Google Cloud Help
- get google-cloud-sdk from here
```
https://cloud.google.com/sdk/docs/quickstart-linux
```

- or use direct link 64 bit
```
https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-247.0.0-linux-x86_64.tar.gz
```

- copy it to desired folder and extract
```
tar zxvf [ARCHIVE_FILE] google-cloud-sdk
```

- run installation script
```
./google-cloud-sdk/install.sh
```

- install component
```
gcloud components install COMPONENT_ID
```

- remove component
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
- initialize sdk
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

