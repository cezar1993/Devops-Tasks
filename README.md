# Devops-Tasks
Task #2
1. If we have more cloud providers we can make separate repositories for each provider and on each repo we can create folders for each environment. 

Task #3
For the monitoring part I ll use nagios in order to see the alerts there and in case I see in nagios that the  instance is down and couldn t get anything from there I will use grafana to check the dashboards. Grafana it will use Cloudwatch as source in order to import data from aws.

Task #4
After .gitlab-ci.yml will be pushed to gitlab a pipeline will be created that will build an artifact that contain the aplication from dockerfile.
After that we gonna tests the functionality of the aplication with tests.sh scriptand see if "Welcome to MyAwesomeApp!" text will apear.