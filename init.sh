#!/bin/bash
mkdir -p ./vault/data
chmod ugo+rw ./vault/data
cat > ./vault/data/init.sh <<EOF
export VAULT_ADDR='http://127.0.0.1:8200'
vault operator unseal $1

EOF
