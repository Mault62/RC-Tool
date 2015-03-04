#! /bin/bash
#! /bin/bash
#### Initialisation des variables ####
 
#+ Mode normal
RESETCOLOR="$(tput sgr0)"
# "Surligné" (bold)
SURLIGNE=$(tput smso)
# "surligné ecriture bleu
LIGNEBLEU=$(tput smso; tput bold ; tput setaf 4)
# "surligné ecriture jaune
LIGNEJAUNE=$(tput smso; tput bold ; tput setaf 3)
# "Non-Surligné" (offbold)
NONSURLIGNE=$(tput rmso)
 
# Couleurs (gras)
#+ Rouge
ROUGE="$(tput bold ; tput setaf 1)"
#+ Vert
VERT="$(tput bold ; tput setaf 2)"
#+ Jaune
JAUNE="$(tput bold ; tput setaf 3)"
#+ Bleu
BLEU="$(tput bold ; tput setaf 4)"
#+ Cyan
CYAN="$(tput bold ; tput setaf 6)"
 
#### Fin initialisation variables ####


echo "${LIGNEBLEU}############# Propagation des DNS ########################${NONSURLIGNE}"
echo ""
echo -n "${BLEU}Nom de domaine : ${RESETCOLOR}"
read ndd
echo "$ndd"
echo "${JAUNE}##########  A / CNAME / MX / TXT / NS ##########${RESETCOLOR}"
echo "=====     $ndd ====="
echo "${ROUGE}## A ## ${RESETCOLOR}" 
dig a "$ndd" +short
echo "${ROUGE}## MX ##${RESETCOLOR} "
dig mx "$ndd" +short
echo "${ROUGE}## TXT ##${RESETCOLOR} "
dig txt "$ndd" +short
echo "${ROUGE}## NS ## ${RESETCOLOR}"
dig ns "$ndd" +short
varhost=$(dig a "$ndd" +short)
echo "${ROUGE}## HOST ## ${RESETCOLOR}"
host "$varhost"
echo ""
echo "${JAUNE}##########  A / CNAME / MX / TXT / NS @ United States, Los Angeles ##########${RESETCOLOR}"
echo "${ROUGE}## A ## ${RESETCOLOR}"
dig a "$ndd" @76.91.186.10 +short
echo "${ROUGE}## MX ## ${RESETCOLOR}"
dig mx "$ndd" @76.91.186.10 +short
echo "${ROUGE}## TXT ## ${RESETCOLOR}"
dig txt "$ndd" @76.91.186.10 +short
echo "${ROUGE}## NS ## ${RESETCOLOR}"
dig ns "$ndd" +short @76.91.186.10 +short
varhost=$(dig a "$ndd"@76.91.186.10 +short)
echo "${ROUGE}## HOST ## ${RESETCOLOR}"
host "$varhost"
echo ""
echo "${JAUNE}##########  A / CNAME / MX / TXT / NS @ Brazil ##########${RESETCOLOR}"
echo "${ROUGE}## A ## ${RESETCOLOR}"
dig a "$ndd" @177.200.94.141 +short
echo "${ROUGE}## MX ## ${RESETCOLOR}"
dig mx "$ndd" @177.200.94.141 +short
echo "${ROUGE}## TXT ## ${RESETCOLOR}"
dig txt "$ndd" @177.200.94.141 +short
echo "${ROUGE}## NS ## ${RESETCOLOR}"
dig ns "$ndd" @177.200.94.141 +short
varhost=$(dig a "$ndd" @177.200.94.141 +short)
echo "${ROUGE}## HOST ## ${RESETCOLOR}"
host "$varhost"
echo ""
echo "${JAUNE}##########  A / CNAME / MX / TXT / NS @ Taiwan, Province of China, Taipei  ##########${RESETCOLOR}"
echo "${ROUGE}## A ## ${RESETCOLOR}"
dig a "$ndd" @140.119.162.48 +short
echo "${ROUGE}## MX ## ${RESETCOLOR}"
dig mx "$ndd" @140.119.162.48 +short
echo "${ROUGE}## TXT ## ${RESETCOLOR}"
dig txt "$ndd" @140.119.162.48 +short
echo "${ROUGE}## NS ## ${RESETCOLOR}"
dig ns "$ndd" @140.119.162.48 +short
varhost=$(dig a "$ndd" @140.119.162.48 +short)
echo "${ROUGE}## HOST ## ${RESETCOLOR}"
host "$varhost"
echo ""
echo "${JAUNE}##########  A / CNAME / MX / TXT / NS @ Russian Federation, Saint Petersburg   ##########${RESETCOLOR}"
echo "${ROUGE}## A ## ${RESETCOLOR}"
dig a "$ndd" @5.19.253.32 +short
echo "${ROUGE}## MX ## ${RESETCOLOR}"
dig mx "$ndd" @5.19.253.32 +short
echo "${ROUGE}## TXT ## ${RESETCOLOR}"
dig txt "$ndd" @5.19.253.32 +short
echo "${ROUGE}## NS ## ${RESETCOLOR}"
dig ns "$ndd" @5.19.253.32 +short
varhost=$(dig a "$ndd" @5.19.253.32 +short)
echo "${ROUGE}## HOST ## ${RESETCOLOR}"
host "$varhost"
echo ""
echo "${JAUNE}##########  A / CNAME / MX / TXT / NS @ Bahrain   ##########${RESETCOLOR}"
echo "${ROUGE}## A ##${RESETCOLOR} "
dig a "$ndd" @109.161.227.111 +short
echo "${ROUGE}## MX ## ${RESETCOLOR}"
dig mx "$ndd" @109.161.227.111 +short
echo "${ROUGE}## TXT ##${RESETCOLOR} "
dig txt "$ndd" @109.161.227.111 +short
echo "${ROUGE}## NS ## ${RESETCOLOR}"
dig ns "$ndd" @109.161.227.111 +short
varhost=$(dig a "$ndd" @109.161.227.111 +short)
echo "${ROUGE}## HOST ##${RESETCOLOR} "
host "$varhost"
echo ""
echo "${JAUNE}##########  A / CNAME / MX / TXT / NS @ Japan   ##########${RESETCOLOR}"
echo "${ROUGE}## A ##${RESETCOLOR} "
dig a "$ndd" @114.161.176.208 +short
echo "${ROUGE}## MX ##${RESETCOLOR} "
dig mx "$ndd" @114.161.176.208 +short
echo "${ROUGE}## TXT ##${RESETCOLOR} "
dig txt "$ndd" @114.161.176.208 +short
echo "${ROUGE}## NS ##${RESETCOLOR} "
dig ns "$ndd" @114.161.176.208 +short
varhost=$(dig a "$ndd" @114.161.176.208 +short)
echo "${ROUGE}## HOST ## ${RESETCOLOR}"
host "$varhost"
echo ""
echo "${JAUNE}##########  A / CNAME @ / MX / TXT / NS France   ##########${RESETCOLOR}"
echo "${ROUGE}## A ## ${RESETCOLOR}"
dig a "$ndd" @217.128.65.51 +short
echo "${ROUGE}## MX ## ${RESETCOLOR}"
dig mx "$ndd" @217.128.65.51 +short
echo "${ROUGE}## TXT ## ${RESETCOLOR}"
dig txt "$ndd" @217.128.65.51 +short
echo "${ROUGE}## NS ## ${RESETCOLOR}"
dig ns "$ndd" @217.128.65.51 +short
varhost=$(dig a "$ndd" @217.128.65.51 +short)
echo "${ROUGE}## HOST ## ${RESETCOLOR}"
host "$varhost"
echo ""
echo "${JAUNE}##########  A / CNAME / MX / TXT / NS @  Hong Kong, Central District   ##########${RESETCOLOR}"
echo "${ROUGE}## A ## ${RESETCOLOR}"
dig a "$ndd" @210.6.104.110 +short
echo "${ROUGE}## MX ##${RESETCOLOR} "
dig mx "$ndd" @210.6.104.110 +short
echo "${ROUGE}## TXT ## ${RESETCOLOR}"
dig txt "$ndd" @210.6.104.110 +short
echo "${ROUGE}## NS ## ${RESETCOLOR}"
dig ns "$ndd" @210.6.104.110 +short
varhost=$(dig a "$ndd" @210.6.104.110 +short)
echo "${ROUGE}## HOST ## ${RESETCOLOR}"
host "$varhost"
echo ""
echo "${JAUNE}##########  A / CNAME / MX / TXT / NS @   India, Jaipur    ##########${RESETCOLOR}"
echo "${ROUGE}## A ## ${RESETCOLOR}"
dig a "$ndd" @180.188.253.53 +short
echo "${ROUGE}## MX ## ${RESETCOLOR}"
dig mx "$ndd" @180.188.253.53 +short
echo "${ROUGE}## TXT ## ${RESETCOLOR}"
dig txt "$ndd" @180.188.253.53 +short
echo "${ROUGE}## NS ## ${RESETCOLOR}"
dig ns "$ndd" @180.188.253.53 +short
varhost=$(dig a "$ndd" @180.188.253.53 +short)
echo "${ROUGE}## HOST ## ${RESETCOLOR}"
host "$varhost"
echo ""
echo "${JAUNE}##########  A / CNAME / MX / TXT / NS @   Italy    ##########${RESETCOLOR}"
echo "${ROUGE}## A ## ${RESETCOLOR}"
dig a "$ndd" @87.9.149.1 +short
echo "${ROUGE}## MX ## ${RESETCOLOR}"
dig mx "$ndd" @87.9.149.1 +short
echo "${ROUGE}## TXT ## ${RESETCOLOR}"
dig txt "$ndd" @87.9.149.1 +short
echo "${ROUGE}## NS ## ${RESETCOLOR}"
dig ns "$ndd" @87.9.149.1 +short
varhost=$(dig a "$ndd" @87.9.149.1 +short)
echo "${ROUGE}## HOST ## ${RESETCOLOR}"
host "$varhost"
echo ""
echo "${JAUNE}##########  A / CNAME / MX / TXT / NS @   Singapore    ##########${RESETCOLOR}"
echo "${ROUGE}## A ## ${RESETCOLOR}"
dig a "$ndd" @202.150.223.69 +short
echo "${ROUGE}## MX ## ${RESETCOLOR}"
dig mx "$ndd" @202.150.223.69 +short
echo "${ROUGE}## TXT ## ${RESETCOLOR}"
dig txt "$ndd" @202.150.223.69 +short
echo "${ROUGE}## NS ##${RESETCOLOR} "
dig ns "$ndd" @202.150.223.69 +short
varhost=$(dig a "$ndd" @202.150.223.69 +short)
echo "${ROUGE}## HOST ## ${RESETCOLOR}"
host "$varhost"
echo ""
echo "${JAUNE}##########  A / CNAME / MX / TXT / NS @   Google    ##########${RESETCOLOR}"
echo "${ROUGE}## A ## ${RESETCOLOR}"
dig a "$ndd" @8.8.8.8 +short
echo "${ROUGE}## MX ## ${RESETCOLOR}"
dig mx "$ndd" @8.8.8.8 +short
echo "${ROUGE}## TXT ## ${RESETCOLOR}"
dig txt "$ndd" @8.8.8.8 +short
echo "${ROUGE}## NS ## ${RESETCOLOR}"
dig ns "$ndd" @8.8.8.8 +short
varhost=$(dig a "$ndd" @8.8.8.8 +short)
echo "${ROUGE}## HOST ## ${RESETCOLOR}"
host "$varhost"
echo ""
echo "${JAUNE}#####################################${RESETCOLOR}"
echo -n "Quitter ?"
read quitter
./tool.sh
exit 0
