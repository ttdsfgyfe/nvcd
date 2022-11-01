#!/bin/sh
if [ ! -f UUID ]; then
  UUID="13420d9c-1fe3-4e65-9ed1-69d108eb25ec"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

