certbot certonly \
  --standalone -n \
  -d "${DOMAIN}" \
  --email "${EMAIL}" \
  --agree-tos

ROOT_DIR="/etc/letsencrypt/live/${DOMAIN}.com"

cat "${ROOT_DIR}/privkey.pem" > /new-cert.pem
cat "${ROOT_DIR}/cert.pem" >> /new-cert.pem
cat "${ROOT_DIR}/chain.pem" >> /new-cert.pem

cp /new-cert.pem /znc-data/znc.pem
