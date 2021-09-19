#Specify base image 
#repository:tag
#dheerajk77253:simpleNodeApp 
#alpine in docker means a compressed image
FROM node:alpine

# Working directory
#to mention in which folder we need to copy and execute all commands
WORKDIR /usr/node_app

#copy files
COPY ./package.json ./
#Instsall dependencies
RUN npm install

COPY ./ ./

#default command
CMD ["npm", "start"]

#build a container :-> docker build -t dheerajk77253/simplenodeapp .
#Run a container :-> docker run -p  8080:8080 dheerajk77253/simplenodeapp
#Getting into terminal of container :-> docker run -it dheerajk77253/simplenodeapp sh