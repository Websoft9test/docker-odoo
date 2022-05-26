#!/bin/bash

if [[ -f /microhei.deb ]]; then
    curl -L http://ftp.de.debian.org/debian/pool/main/f/fonts-wqy-microhei/fonts-wqy-microhei_0.2.0-beta-3_all.deb -o  microhei.deb
    curl -L http://ftp.de.debian.org/debian/pool/main/f/fonts-wqy-zenhei/fonts-wqy-zenhei_0.9.45-8_all.deb -o zenhei.deb
    curl -L https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.buster_amd64.deb -o wkhtmltox.deb -o wkhtmltox.deb
    dpkg -i microhei.deb zenhei.deb wkhtmltox.deb
else
    echo "Initialization has been completed before this time!"
fi

/entrypoint.sh odoo
