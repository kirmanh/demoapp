#commonds

#commonde for creating docker network

docker network create mongo-network

#commonds for mongo-db

docker run -d \
-p 27017:27017 \
-e MONGO_INITDB_ROOT_USERNAME=admin \
-e MONGO_INITDB_ROOT_PASSWORD=password \
--net mongo-network \
--name mongodb \
mongo

#commonds for mongo-express

docker run -d \
-p 8080:8080 \
-e ME_CONFIG_MONGODB_ADMINUSERNAME=admin \
-e ME_CONFIG_MONGODB_ADMINPASSWORD=password \
--net mongo-network \
--name mongo-express \
-e ME_CONFIG_MONGODB_SERVER=mongo-db \
mongo-express
