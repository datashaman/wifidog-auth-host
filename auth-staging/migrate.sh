cp ../auth-latest/data/local.db data/old.db
rm -f data/new.db
docker-compose run --rm web migrate
mv data/new.db data/local.db
