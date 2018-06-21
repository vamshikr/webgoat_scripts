#!/bin/sh

set -x;

cd ~/WebGoat/WebGoat-Lessons-develop

mvn clean && \
    mvn package -DskipTests -Dmaven.test.skip=true && \
    rm -rf ../WebGoat-7.1/webgoat-container/src/main/webapp/plugin_lessons/*.jar && \
    cp target/plugins/*.jar ../WebGoat-7.1/webgoat-container/src/main/webapp/plugin_lessons/

