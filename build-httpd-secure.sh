VERSION=2.2.6
#SSL_VERSION=0.9.8e
SSL_VERSION=0.9.7m
ROOT_DIR=/shared/home/don.branson/apps/

cd httpd-${VERSION}
#./configure --prefix=${ROOT_DIR}httpd-${VERSION}-ssl --enable-cache --enable-file-cache --enable-disk-cache --enable-mem-cache --enable-mime-magic --enable-expires --enable-headers --enable-usertrack --enable-proxy --enable-proxy-connect --enable-proxy-http --enable-ssl --enable-http --enable-so --with-ssl=../openssl-${SSL_VERSION}

./configure --prefix=${ROOT_DIR}httpd-${VERSION}-ssl --enable-so --enable-expires --enable-headers --enable-proxy --enable-proxy-connect --enable-proxy-http --enable-mods-shared=all --enable-cache --enable-mem-cache --enable-ssl=static --with-ssl=../openssl-${SSL_VERSION}
 
make install
