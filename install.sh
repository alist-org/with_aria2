apk add --no-cache aria2 curl

mkdir -p /opt/alist/data/aria2
cd /opt/alist/data/aria2
wget https://github.com/P3TERX/aria2.conf/archive/refs/heads/master.tar.gz
tar -zxvf master.tar.gz --strip-components=1
rm -rf master.tar.gz
sed -i 's|rpc-secret|#rpc-secret|g' ./aria2.conf
./tracker.sh