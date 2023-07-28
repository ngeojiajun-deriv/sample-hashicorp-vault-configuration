SECRET='<secret>' # Use echo '<SECRET>' | openssl enc -aes-256-cbc -pbkdf2 | base64 to get it
docker-compose exec vault sh /mnt/vault/data/init.sh $(echo "$SECRET" | base64 -d | openssl enc -aes-256-cbc -pbkdf2 -d)

