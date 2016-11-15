#!/bin/sh

sed -i 's|127.0.0.1|'"${DBHOST}"'|g' handlers/mongodb-raw.js
sed -i 's|127.0.0.1|'"${DBHOST}"'|g' handlers/mongoose.js
sed -i 's|127.0.0.1|'"${DBHOST}"'|g' handlers/mysql-raw.js
sed -i 's|127.0.0.1|'"${DBHOST}"'|g' handlers/redis.js
sed -i 's|127.0.0.1|'"${DBHOST}"'|g' handlers/sequelize.js
sed -i 's|127.0.0.1|'"${DBHOST}"'|g' handlers/sequelize-postgres.js

# Remove all DBs except for postgres
sed -i '/MongodbRawHandler/d' routing.js
sed -i '/MySQLRawHandler/d' routing.js
sed -i '/MongooseHandler/d' routing.js
sed -i '/SequelizeHandler/d' routing.js
sed -i '/HiredisHandler/d' routing.js

node app.js
