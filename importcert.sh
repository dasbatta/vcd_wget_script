cd /tmp
wget https://harborstgsvcs.telmex.com/api/v2.0/systeminfo/getcert --no-check-certificate &&
mv getcert rootint.crt &&
openssl x509 -in rootint.crt -out rootint.pem &&
cp rootint.pem /etc/ssl/certs/ &&
cp rootint.crt /usr/local/share/ca-certificates/ &&
sudo update-ca-certificates &&
systemctl restart kubelet.service &&
systemctl restart containerd.service
