FROM starefossen/ruby-node:latest
USER node
ENV NODE_ENV=production
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin
RUN mkdir -p /home/node/app
WORKDIR /home/node/app
COPY --chown=node:node package.json .
COPY --chown=node:node yarn.lock .
RUN npm install --production --silent && mv node_modules ../
RUN ["chmod", "755", "tryInstall.sh"]
COPY --chown=node:node . .
EXPOSE 8080
CMD ["node", "index.js"]