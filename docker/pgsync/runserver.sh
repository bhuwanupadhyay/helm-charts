#! /bin/sh
./wait-for-it.sh "$POSTGRES_HOST_URL" -t 60
./wait-for-it.sh "$ELASTICSEARCH_HOST_URL" -t 60
./wait-for-it.sh "$REDIS_HOST_URL" -t 60

python configs/schema.py --config configs/schema.json
python configs/data.py --config configs/schema.json

bootstrap --config configs/schema.json
pgsync --config configs/schema.json --daemon
