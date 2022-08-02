cd /tmp
chmod 755 tanzustg-ca*
cp tanzustg-ca.pem /etc/ssl/certs/ &&
cp tanzustg-ca.crt /usr/local/share/ca-certificates/ &&
sudo update-ca-certificates &&
systemctl restart kubelet.service &&
systemctl restart containerd.service
