Hi<br>

Working tree:<br>
'''
.
├── app
│   ├── app
│   │   ├── run.py
│   │   ├── static
│   │   │   ├── css
│   │   │   │   └── sb-admin-2.css
│   │   │   └── js
│   │   │       └── form.js
│   │   └── templates
│   │       └── guess.html
│   ├── Dockerfile
│   ├── guess
│   │   ├── charts
│   │   ├── Chart.yaml
│   │   ├── templates
│   │   │   ├── deployment.yaml
│   │   │   ├── _helpers.tpl
│   │   │   ├── hpa.yaml
│   │   │   ├── NOTES.txt
│   │   │   ├── serviceaccount.yaml
│   │   │   ├── service.yaml
│   │   │   └── tests
│   │   │       └── test-connection.yaml
│   │   └── values.yaml
│   ├── Jenkinsfile
│   └── requirements.txt
├── jenkins
│   ├── config.yml
│   ├── docker-compose.yml
│   ├── Dockerfile
│   ├── plugins.txt
│   ├── README.md
│   └── users.env
├── multistage_Dockerfile
├── README.md
└── tag.sh
'''

A small Description:<ol>
<li>multistage_Dockerfile - is multistage docker file that based on ubuntu to download a github repo and copy it to python image. because its not usefull i didnt used it for the next steps.</li>
<li>app folder - contains the app (sub-folder "app"), helm chrat named "guess" the dockerfile to build the app and the jenkinsfile for the pipeline</li>
<li>jenkins folder - contains the files to deploy jenkins in docker</li>
<li>tag.sh - I tried to use a bash script to pull the image tag from dockerhub and implant it to the values.yaml file - didnt got through it.</li>
<li>tagging - as in multibranch pipleine it is best-practice to give the image tags. The purpose of the tags is to mark the image for version tracking.
The efficient and correct way is marking the image with 'major.minor.patch number (the example in our case meir215/guess:1.0.1). in this way we will be able to follow the app virsions rether its a major change or a small one. in the 'latest' tag we will use in the latest stable working virsion.</li>

The github repo:

>https://github.com/meirya21/guess

