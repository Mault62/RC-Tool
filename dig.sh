#! /bin/bash
#### Code pour couleur ####
 
#+ Mode normal
RESETCOLOR="$(tput sgr0)"
# "Surligné" (bold)
SURLIGNE=$(tput smso)
# "surligné ecriture bleu
LIGNEBLEU=$(tput smso; tput bold ; tput setaf 4)
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
 
#### Fin ####


echo "${BLEU}############# DIG WHOIS ########################${RESETCOLOR}"
echo ""
echo -n "${BLEU}Nom de domaine : "
read ndd
echo "$ndd"
echo "${RESETCOLOR}"
echo "${BLEU}########## WHOIS ##########${RESETCOLOR}"
echo "${ROUGE}"
whois "$ndd"
echo "${RESETCOLOR}"
echo "${BLEU}############# IP Géocache ########################"
echo ""
readonly adresse=$(host $ndd | grep "has address" | tail -n +1) 
readonly ip=$(host $ndd | grep "has address" | tail -n +1 | awk '{print $NF}')
readonly CLUSTER1=$(host $ip | awk '{print $NF}')
CLUSTER=$(host $ip | awk '{print $NF}')
if [ "basic-cdn-01.cluster002.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster002.ovh.net"
fi
if [ "basic-cdn-01.cluster003.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster003.ovh.net"
fi
if [ "basic-cdn-01.cluster005.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster005.ovh.net"
fi
if [ "basic-cdn-01.cluster006.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster006.ovh.net"
fi
if [ "basic-cdn-01.cluster007.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster007.ovh.net"
fi
if [ "basic-cdn-01.cluster010.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster010.ovh.net"
fi
if [ "basic-cdn-01.cluster011.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster011.ovh.net"
fi
if [ "basic-cdn-01.cluster012.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster012.ovh.net"
fi
if [ "basic-cdn-01.cluster013.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster013.ovh.net"
fi
if [ "basic-cdn-01.cluster014.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster014.ovh.net"
fi
if [ "basic-cdn-01.cluster015.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster015.ovh.net"
fi
if [ "basic-cdn-01.cluster017.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster017.ovh.net"
fi
if [ "full-cdn-01.cluster002.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster002.ovh.net"
fi
if [ "full-cdn-01.cluster003.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster003.ovh.net"
fi
if [ "full-cdn-01.cluster005.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster005.ovh.net"
fi
if [ "full-cdn-01.cluster006.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster006.ovh.net"
fi
if [ "full-cdn-01.cluster007.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster007.ovh.net"
fi
if [ "full-cdn-01.cluster010.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster010.ovh.net"
fi
if [ "full-cdn-01.cluster011.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster011.ovh.net"
fi
if [ "full-cdn-01.cluster012.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster012.ovh.net"
fi
if [ "full-cdn-01.cluster013.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster013.ovh.net"
fi
if [ "full-cdn-01.cluster014.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster014.ovh.net"
fi
if [ "full-cdn-01.cluster015.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster015.ovh.net"
fi
if [ "full-cdn-01.cluster017.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster017.ovh.net"
fi
echo ""
echo "${ROUGE}Pointe sur le cluster:${JAUNE} $CLUSTER "
echo "${ROUGE}Avec l'adresse IP:${JAUNE} $ip "
echo ""
        readonly DIRECT_IP=$(host direct.$CLUSTER | tail -n +1 | awk '{print $NF}')
        readonly CLUSTER_IP=$(host $CLUSTER | grep "has address"| tail -n +1 | awk '{print $NF}')
        readonly CDN_IP=$(host basic-cdn-01.$CLUSTER | tail -n +1 | awk '{print $NF}')
        readonly CDN17_IP=$(host full-cdn-01.$CLUSTER | tail -n +1 | awk '{print $NF}')
        echo "${ROUGE}ip direct :${JAUNE} $DIRECT_IP${RESETCOLOR}"
        echo "${ROUGE}ip cluster :${JAUNE} $CLUSTER_IP${RESETCOLOR}"
        echo "${ROUGE}ip cdn 3 pops :${JAUNE} $CDN_IP${RESETCOLOR}"
        echo "${ROUGE}ip cdn 17 pops :${JAUNE} $CDN17_IP${RESETCOLOR}"
echo "${BLEU}##########  SOA ##########${RESETCOLOR}"
echo "${ROUGE}"
dnssoa=$(dig +noall +answer "$ndd" SOA | awk '{print $5}')
ttl=$(dig +noall +answer "$ndd"| awk '{print $2}')
ttldns=$(dig +noall +answer "$ndd" @$dnssoa| awk '{print $2}')
echo "${JAUNE}Temps TTL -> ${ROUGE} $ttldns"
echo "${JAUNE}Temps avant refresh de zone sur résolue -> ${ROUGE} $ttl" 
echo "${JAUNE}Temps écoulé -> ${ROUGE} $ttldns - $ttl = $(( $ttldns - $ttl ))" 
echo "${RESETCOLOR}"
echo "${BLEU}##########  NS ##########${RESETCOLOR}"
echo "${ROUGE}"
dig ns "$ndd" +short
echo "${RESETCOLOR}"
echo "${BLEU}##########  MX ##########${RESETCOLOR}"
echo "${ROUGE}"
dig mx "$ndd" +short
echo "${RESETCOLOR}"
echo "${BLEU}##########  A / CNAME ##########${RESETCOLOR}"
echo "${ROUGE}"
echo "${JAUNE}===============================     $ndd =====${RESETCOLOR}"
echo "${ROUGE}"
dig a "$ndd" +short
varhost=$(dig a "$ndd" +short)
host "$varhost"
echo "${RESETCOLOR}"
echo "${JAUNE}=============================== www.$ndd =====${RESETCOLOR}"
echo "${ROUGE}"
dig a "www.$ndd" +short
varhost=$(dig a "www.$ndd" +short)
host "$varhost"
echo "${RESETCOLOR}"
echo "${JAUNE}=============================== ftp.$ndd =====${RESETCOLOR}"
echo "${ROUGE}"
dig a "ftp.$ndd" +short
varhost=$(dig a "ftp.$ndd" +short)
host "$varhost"
varhost=$(host "ftp.$ndd")
host "$varhost"
echo "${RESETCOLOR}"
echo "${BLEU}##########  TXT ##########${RESETCOLOR}"
echo "${ROUGE}"
dig txt "$ndd" +short
echo ""
echo "${BLEU}#####################################${RESETCOLOR}"
echo -n "${ROUGE}Quitter ?${RESETCOLOR}"
read quitter
./tool.sh
exit 0
