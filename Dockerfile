FROM solsson/httpd-openidc

COPY ./index.html /usr/local/apache2/htdocs/
COPY ./private.html /usr/local/apache2/htdocs/secure/index.html

COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
