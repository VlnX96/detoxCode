# FROM node:14-alpine
# USER node
# ENV NODE_ENV=production
# ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
# ENV PATH=$PATH:/home/node/.npm-global/bin
# RUN mkdir -p /home/node/app
# WORKDIR /home/node/app
# COPY --chown=node:node package.json .
# COPY --chown=node:node yarn.lock .
# RUN npm install --production --silent && mv node_modules ../
# RUN ["chmod", "755", "tryInstall.sh"]
# COPY --chown=node:node . .
# EXPOSE 8080
# CMD ["node", "index.js"]


FROM jenkins/jenkins:2.303.2-jdk11
USER root
RUN apt-get update && apt-get install -y apt-transport-https \
       ca-certificates curl gnupg2 \
       software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN apt-key fingerprint 0EBFCD88
RUN add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/debian \
       $(lsb_release -cs) stable"
RUN apt-get update && apt-get install -y docker-ce-cli
USER jenkins
RUN jenkins-plugin-cli --plugins "blueocean:1.25.0 docker-workflow:1.26"