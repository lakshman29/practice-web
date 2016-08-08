#!/bin/sh

set -e # fail fast
set -x # print commands
#mvn archetype:generate -Dfilter=org.apache.maven.archetypes:maven-archetype-quickstart
mvn archetype:generate -DgroupId=com.test -DartifactId=DEF -Dpackaging=jar -Dversion=1.0 -DinteractiveMode=false
git init

git add .
git commit -m "pushing the repo"
#git remote add origin https://github.com/lakshman29/practice-web.git

curl -u 'lakshman29@gmail.com:Test@123' https://api.github.com/user/repos -d '{"name":"resource"}'
# Remember replace USER with your username and REPO with your repository/application name!
git remote add origin git@github.com:lakshman29@gmail.com/resource.git
git push origin master


