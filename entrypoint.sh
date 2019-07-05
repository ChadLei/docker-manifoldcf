#!/bin/sh
sh /wait-for-it.sh $POSTGRES_HOSTNAME:$POSTGRES_PORT

PROPS_FILE='/usr/share/manifoldcf/example/properties.xml'

sed -i "s/\$MANIFOLDCF_VERSION/$MANIFOLDCF_VERSION/" $PROPS_FILE
sed -i "s/\$POSTGRES_HOSTNAME/$POSTGRES_HOSTNAME/" $PROPS_FILE
sed -i "s/\$POSTGRES_PORT/$POSTGRES_PORT/" $PROPS_FILE
sed -i "s/\$POSTGRES_SSL/$POSTGRES_SSL/" $PROPS_FILE
sed -i "s/\$POSTGRES_DB/$POSTGRES_DB/" $PROPS_FILE
sed -i "s/\$POSTGRES_USER/$POSTGRES_USER/" $PROPS_FILE
sed -i "s/\$POSTGRES_PASSWORD/$POSTGRES_PASSWORD/" $PROPS_FILE

if [ "$1" = 'start' ]; then
  # exec java -jar start.jar
  
  # exec chmod +x start-webapps.sh
  # exec start-webapps.sh

  # exec chmod +x start-database.sh
  # exec start-database.sh
  # exec chmod +x initialize.sh
  # exec initialize.sh
  # exec chmod +x start-agents.sh
  # exec start-agents.sh
  # exec chmod +x start-webapps.ex
  # exec start-webapps.sh

  # exec sh start-database.sh
  # exec sh initialize.sh
  exec sh start-agents.sh
  exec sh start-webapps.sh

elif [ "$1" = 'sleep' ]; then
  while true; do
    echo "running sleep";
    sleep 10;
  done;
fi;
