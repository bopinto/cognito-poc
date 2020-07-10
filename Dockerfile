FROM solsson/httpd-openidc

RUN apt update && \
    apt --fix-broken -y install && \
    apt install -y python3

COPY ./index.html /usr/local/apache2/htdocs/
COPY ./private.html /usr/local/apache2/htdocs/secure/index.html

COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./oidc_creds.conf /usr/local/apache2/conf/oidc_creds.conf
COPY ./print.cgi /usr/local/apache2/cgi-bin/print.cgi

RUN chown www-data:www-data /usr/local/apache2/cgi-bin/print.cgi && \
    chmod 755 /usr/local/apache2/cgi-bin/print.cgi