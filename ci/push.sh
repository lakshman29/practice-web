#!/bin/sh

set -e # fail fast
set -x # print commands
#mvn archetype:generate -Dfilter=org.apache.maven.archetypes:maven-archetype-quickstart
curl -u 'lakshman29@gmail.com:xxxx@xxx' https://api.github.com/user/repos -d '{"name":"resource1"}'

#git init
mvn archetype:generate -DgroupId=com.test -DartifactId=DEF -Dpackaging=jar -Dversion=1.0 -DinteractiveMode=false

git add .
git commit -m "pushing the repo"
#git remote add origin https://github.com/lakshman29/practice-web.git


# Remember replace USER with your username and REPO with your repository/application name!
#git remote add origin git@github.com:lakshman29@gmail.com/resource1.git
git push origin master


