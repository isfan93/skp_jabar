#!/bin/bash
################################################################################
# Script for Installation: ODOO SKP Jabar server on Ubuntu 14.04 LTS
# Author: Darmawan Fatriananda
#-------------------------------------------------------------------------------
#  put on folder odoo
#
################################################################################
 
##fixed parameters
#openerp
OE_HOME="~/odoo"


#--------------------------------------------------
# Update Server
#--------------------------------------------------
echo -e "\n---- Update Server ----"
sudo apt-get update
sudo apt-get upgrade -y

#--------------------------------------------------
# Configure locale
#--------------------------------------------------
echo -e "\n---- Configure Locale ----"

#--------------------------------------------------
# Install PostgreSQL Server
#--------------------------------------------------
echo -e "\n---- Install PostgreSQL Server ----"



#--------------------------------------------------
# Install Dependencies
#--------------------------------------------------
echo -e "\n---- Install tool packages ----"
sudo apt-get install git python-pip -y

echo -e "\n---- Install python sofware ----"
sudo apt-get install -y python-software-properties python g++ make

echo -e "\n---- Install lib pq dev ----"
sudo apt-get install libpq-dev

echo -e "\n---- Install python packages ----"
sudo apt-get install \
    python-dateutil python-feedparser python-matplotlib \
    python-ldap python-libxslt1 python-lxml python-mako \
    python-openid python-psycopg2 python-pychart \
    python-pydot python-pyparsing python-reportlab python-simplejson \
    python-tz python-vatnumber python-vobject python-webdav \
    python-werkzeug python-xlwt python-yaml python-imaging \
    gcc python-dev mc python-setuptools  \
    python-feedparser python-reportlab-accel python-zsi python-openssl \
    python-egenix-mxdatetime python-jinja2 python-unittest2 python-mock \
    python-docutils lptools make python-psutil python-paramiko poppler-utils \
    python-pdftools antiword  graphviz ghostscript \
    python-passlib python-requests python-pypdf python-requests python-pypdf python-decorator	

echo -e "\n---- Install python libraries ----"
sudo pip install gdata

echo -e "\n---- Install wkhtml and place on correct place for ODOO 8 ----"
sudo wget http://download.gna.org/wkhtmltopdf/0.12/0.12.1/wkhtmltox-0.12.1_linux-trusty-amd64.deb
sudo dpkg -i wkhtmltox-0.12.1_linux-trusty-amd64.deb
sudo cp /usr/local/bin/wkhtmltopdf /usr/bin
sudo cp /usr/local/bin/wkhtmltoimage /usr/bin
	
echo -e "\n---- node ----"
sudo apt-get update
sudo apt-get install nodejs
sudo apt-get install npm
sudo npm install -g less
sudo npm install -g less-plugin-clean-css

echo -e "\n---- psycog ----"
sudo wget https://pypi.python.org/packages/source/p/psycogreen/psycogreen-1.0.tar.gz#md5=7a32d8f5abdb4ce17ac512f8c8a698a9
sudo tar -xzvf psycogreen-1.0.tar.gz
cd psycogreen-1.0
sudo python setup.py install

echo -e "\n---- pydocx dan py curl ----"
cd ~/odoo
sudo pip install python-docx
sudo apt-get install python-pycurl

echo "Done! "
