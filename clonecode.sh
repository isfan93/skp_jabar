#! /bin/sh

git config --global "darmawan.fatria"

git config --global user.email "darmawan.fatria@gmail.com"

echo -e "\n==== Start Clone code ===="
echo -e "\n---- 1 ----"
git clone https://github.com/darfat/odoo-server8.git
echo -e "\n---- 2 ----"
git clone https://gitlab.com/darmawan.fatria/provjabar-anjab-addons.git
echo -e "\n---- 3 ----"
git clone https://gitlab.com/darmawan.fatria/provjabar-skp-guru-addons.git
echo -e "\n---- 4 ----"
git clone https://gitlab.com/darmawan.fatria/provjabar-skp-sipkd-addons.git
echo -e "\n---- 5 ----"
git clone https://gitlab.com/darmawan.fatria/provjabar-skp-siao-addons.git
echo -e "\n---- 6 ----"
git clone https://gitlab.com/darmawan.fatria/provjabar-skp-notification-addons.git
echo -e "\n---- 7 ----"
git clone https://gitlab.com/darmawan.fatria/provjabar-skp-puslia-addons.git
echo -e "\n---- 8 ----"
git clone https://gitlab.com/darmawan.fatria/provjabar-skp-dashboard-addons.git
echo -e "\n---- 9 ----"
git clone https://gitlab.com/darmawan.fatria/provjabar-skp-complaint-addons.git
echo -e "\n---- 10 ----"
git clone https://gitlab.com/darmawan.fatria/provjabar-jafung-addons.git
echo -e "\n---- 11 ----"
git clone https://gitlab.com/darmawan.fatria/provjabar-pelayanan-pendidikan-addons.git
echo -e "\n---- 12 ----"
git clone https://gitlab.com/darmawan.fatria/provjabar-struktural-addons.git
echo -e "\n---- 13 ----"
git clone -b kementan https://gitlab.com/darmawan.fatria/skp-kementrian-addons.git

echo -e "\n==== Finished ...===="
