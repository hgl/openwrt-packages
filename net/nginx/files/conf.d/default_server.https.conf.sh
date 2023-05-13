. /usr/lib/nginx/functions.sh

output <<EOF
server {
	listen 443 ssl default_server;
	listen [::]:443 ssl default_server;
	access_log off;
	$(ngx_ssl_cert)

	include /var/etc/nginx/conf.d/default_server/*.conf;
	include conf.d/default_server/*.conf;
}
EOF
