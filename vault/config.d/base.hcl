# We use tcp on local host only
listener "tcp" {
    address       = "0.0.0.0:8200"
    tls_disable   = true
}

storage "file" {
    path = "/mnt/vault/data"
}

ui            = true
api_addr = "http://127.0.0.1:8200"
cluster_addr = "https://127.0.0.1:8201"