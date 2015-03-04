 
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


echo "${BLEU}############# ERREUR CDN ########################${RESETCOLOR}"
echo ""
echo -n "${BLEU}Nom de domaine : "
read ndd
echo "$ndd" 
readonly ip=$(host $ndd | grep "has address" | tail -n +1 | awk '{print $NF}')
readonly CLUSTER1=$(host $ip | awk '{print $NF}')
CLUSTER=$(host $ip | awk '{print $NF}')

if [ "basic-cdn-01.cluster002.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster002.ovh.net."
fi
if [ "basic-cdn-01.cluster003.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster003.ovh.net."
fi
if [ "basic-cdn-01.cluster005.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster005.ovh.net."
fi
if [ "basic-cdn-01.cluster006.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster006.ovh.net."
fi
if [ "basic-cdn-01.cluster007.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster007.ovh.net."
fi
if [ "basic-cdn-01.cluster010.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster010.ovh.net."
fi
if [ "basic-cdn-01.cluster011.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster011.ovh.net."
fi
if [ "basic-cdn-01.cluster012.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster012.ovh.net."
fi
if [ "basic-cdn-01.cluster013.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster013.ovh.net."
fi
if [ "basic-cdn-01.cluster014.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster014.ovh.net."
fi
if [ "basic-cdn-01.cluster015.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster015.ovh.net."
fi
if [ "basic-cdn-01.cluster017.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster017.ovh.net."
fi
if [ "full-cdn-01.cluster002.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster002.ovh.net."
fi
if [ "full-cdn-01.cluster003.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster003.ovh.net."
fi
if [ "full-cdn-01.cluster005.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster005.ovh.net."
fi
if [ "full-cdn-01.cluster006.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster006.ovh.net."
fi
if [ "full-cdn-01.cluster007.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster007.ovh.net."
fi
if [ "full-cdn-01.cluster010.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster010.ovh.net."
fi
if [ "full-cdn-01.cluster011.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster011.ovh.net."
fi
if [ "full-cdn-01.cluster012.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster012.ovh.net."
fi
if [ "full-cdn-01.cluster013.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster013.ovh.net."
fi
if [ "full-cdn-01.cluster014.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster014.ovh.net."
fi
if [ "full-cdn-01.cluster015.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster015.ovh.net."
fi
if [ "full-cdn-01.cluster017.ovh.net." = "$CLUSTER1" ];
then CLUSTER="cluster017.ovh.net."
#else CLUSTER=$(host $ip | awk '{print $NF}')
fi

echo ""
echo "${ROUGE}Pointe sur le cluster:${JAUNE} $CLUSTER "
echo "${ROUGE}Avec l'adresse IP:${JAUNE} $ip "
#echo -n "${BLEU}Numéro du cluster : "
#read cluster
#echo "$CLUSTEecho -n "0 - Commande de base"
echo "${JAUNE}"
echo ""
echo -n "1 - /index.php"
echo ""
echo -n "2 - /index.html"
echo ""
echo -n "3 - /robot.txt "
echo ""
echo -n "4 - /readme.html"
echo ""
echo -n "5 - Pas de fichier"
echo ""
echo -n "6 - Spécifier un fichier"
echo ""
echo "${RESETCOLOR}"

echo -n "Votre choix : "
read choix
echo ""

if [ "1" = "$choix" ] ;
then echo "${RESETCOLOR}"
echo "${JAUNE} POUR CONNEXION PAR CDN "
echo "${ROUGE}"
if [ "cluster002.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.69/index.php -H Host:$ndd
  
fi
if [ "cluster003.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.85/index.php -H Host:$ndd

fi
if [ "cluster005.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.95/index.php -H Host:$ndd

fi
if [ "cluster006.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.97/index.php -H Host:$ndd
 
fi
if [ "cluster007.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.105/index.php -H Host:$ndd
  
fi
if [ "cluster010.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.107/index.php -H Host:$ndd
  
fi
if [ "cluster011.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.151/index.php -H Host:$ndd
 
fi
if [ "cluster012.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.153/index.php -H Host:$ndd
  
fi
if [ "cluster013.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.83/index.php -H Host:$ndd
  
fi
if [ "cluster014.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.169/index.php -H Host:$ndd
  
fi
if [ "cluster015.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.171/index.php -H Host:$ndd
  
fi
if [ "cluster017.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.171/index.php -H Host:$ndd 
fi
echo "${JAUNE} POUR CONNEXION DIRECT "
echo "${ROUGE}"
if [ "cluster002.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.2/index.php -H Host:$ndd
  
fi
if [ "cluster003.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.4/index.php -H Host:$ndd

fi
if [ "cluster005.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.16/index.php -H Host:$ndd

fi
if [ "cluster006.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.17/index.php -H Host:$ndd
 
fi
if [ "cluster007.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.18/index.php -H Host:$ndd
  
fi
if [ "cluster010.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.19/index.php -H Host:$ndd
  
fi
if [ "cluster011.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.40/index.php -H Host:$ndd
 
fi
if [ "cluster012.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.48/index.php -H Host:$ndd
  
fi
if [ "cluster013.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.24/index.php -H Host:$ndd
  
fi
if [ "cluster014.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.87/index.php -H Host:$ndd
  
fi
if [ "cluster015.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.3/index.php -H Host:$ndd
  
fi
if [ "cluster016.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.48/index.php -H Host:$ndd
  
fi
if [ "cluster017.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.50/index.php -H Host:$ndd 
fi
  fi
if [ "3" = "$choix" ] ;
then echo "${RESETCOLOR}"
echo "${JAUNE} POUR CONNEXION PAR CDN "
echo "${ROUGE}"
if [ "cluster002.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.69/robot.txt -H Host:$ndd
  
fi
if [ "cluster003.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.85/robot.txt -H Host:$ndd

fi
if [ "cluster005.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.95/robot.txt -H Host:$ndd

fi
if [ "cluster006.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.97/robot.txt -H Host:$ndd
 
fi
if [ "cluster007.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.105/robot.txt -H Host:$ndd
  
fi
if [ "cluster010.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.107/robot.txt -H Host:$ndd
  
fi
if [ "cluster011.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.151/robot.txt -H Host:$ndd
 
fi
if [ "cluster012.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.153/robot.txt -H Host:$ndd
  
fi
if [ "cluster013.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.83/robot.txt -H Host:$ndd
  
fi
if [ "cluster014.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.169/robot.txt -H Host:$ndd
  
fi
if [ "cluster015.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.171/robot.txt -H Host:$ndd
  
fi
if [ "cluster017.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.171/robot.txt -H Host:$ndd  
fi
echo "${JAUNE} POUR CONNEXION DIRECT "
echo "${ROUGE}"
if [ "cluster002.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.2/robot.txt -H Host:$ndd
  
fi
if [ "cluster003.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.4/robot.txt -H Host:$ndd

fi
if [ "cluster005.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.16/robot.txt -H Host:$ndd

fi
if [ "cluster006.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.17/robot.txt -H Host:$ndd
 
fi
if [ "cluster007.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.18/robot.txt -H Host:$ndd
  
fi
if [ "cluster010.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.19/robot.txt -H Host:$ndd
  
fi
if [ "cluster011.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.40/robot.txt -H Host:$ndd
 
fi
if [ "cluster012.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.48/robot.txt -H Host:$ndd
  
fi
if [ "cluster013.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.24/robot.txt -H Host:$ndd
  
fi
if [ "cluster014.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.87/robot.txt -H Host:$ndd
  
fi
if [ "cluster015.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.3/robot.txt -H Host:$ndd
  
fi
if [ "cluster016.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.48/robot.txt -H Host:$ndd
  
fi
if [ "cluster017.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.50/robot.txt -H Host:$ndd 
fi
  fi
if [ "2" = "$choix" ] ;
then echo "${RESETCOLOR}"
echo "${JAUNE} POUR CONNEXION PAR CDN "
echo "${ROUGE}"
if [ "cluster002.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.69/index.html -H Host:$ndd
  
fi
if [ "cluster003.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.85/index.html -H Host:$ndd

fi
if [ "cluster005.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.95/index.html -H Host:$ndd

fi
if [ "cluster006.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.97/index.html -H Host:$ndd
 
fi
if [ "cluster007.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.105/index.html -H Host:$ndd
  
fi
if [ "cluster010.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.107/index.html -H Host:$ndd
  
fi
if [ "cluster011.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.151/index.html -H Host:$ndd
 
fi
if [ "cluster012.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.153/index.html -H Host:$ndd
  
fi
if [ "cluster013.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.83/index.html -H Host:$ndd
  
fi
if [ "cluster014.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.169/index.html -H Host:$ndd
  
fi
if [ "cluster015.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.171/index.html -H Host:$ndd
  
fi
if [ "cluster017.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.171/index.html -H Host:$ndd  
fi
echo "${JAUNE} POUR CONNEXION DIRECT "
echo "${ROUGE}"
if [ "cluster002.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.2/index.html -H Host:$ndd
  
fi
if [ "cluster003.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.4/index.html -H Host:$ndd

fi
if [ "cluster005.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.16/index.html -H Host:$ndd

fi
if [ "cluster006.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.17/index.html -H Host:$ndd
 
fi
if [ "cluster007.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.18/index.html -H Host:$ndd
  
fi
if [ "cluster010.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.19/index.html -H Host:$ndd
  
fi
if [ "cluster011.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.40/index.html -H Host:$ndd
 
fi
if [ "cluster012.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.48/index.html -H Host:$ndd
  
fi
if [ "cluster013.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.24/index.html -H Host:$ndd
  
fi
if [ "cluster014.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.87/index.html -H Host:$ndd
  
fi
if [ "cluster015.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.3/index.html -H Host:$ndd
  
fi
if [ "cluster016.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.48/index.html -H Host:$ndd
  
fi
if [ "cluster017.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.50/index.html -H Host:$ndd 
fi
  fi
if [ "4" = "$choix" ] ;
then echo "${RESETCOLOR}"
echo "${JAUNE} POUR CONNEXION PAR CDN "
echo "${ROUGE}"
if [ "cluster002.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.69/readme.html -H Host:$ndd
  
fi
if [ "cluster003.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.85/readme.html -H Host:$ndd

fi
if [ "cluster005.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.95/readme.html -H Host:$ndd

fi
if [ "cluster006.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.97/readme.html -H Host:$ndd
 
fi
if [ "cluster007.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.105/readme.html -H Host:$ndd
  
fi
if [ "cluster010.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.107/readme.html -H Host:$ndd
  
fi
if [ "cluster011.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.151/readme.html -H Host:$ndd
 
fi
if [ "cluster012.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.153/readme.html -H Host:$ndd
  
fi
if [ "cluster013.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.83/readme.html -H Host:$ndd
  
fi
if [ "cluster014.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.169/readme.html -H Host:$ndd
  
fi
if [ "cluster015.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.171/readme.html -H Host:$ndd
  
fi
if [ "cluster017.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.171/readme.html -H Host:$ndd  
fi
echo "${JAUNE} POUR CONNEXION DIRECT "
echo "${ROUGE}"
if [ "cluster002.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.2/readme.html -H Host:$ndd
  
fi
if [ "cluster003.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.4/readme.html -H Host:$ndd

fi
if [ "cluster005.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.16/readme.html -H Host:$ndd

fi
if [ "cluster006.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.17/readme.html -H Host:$ndd
 
fi
if [ "cluster007.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.18/readme.html -H Host:$ndd
  
fi
if [ "cluster010.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.19/readme.html -H Host:$ndd
  
fi
if [ "cluster011.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.40/readme.html -H Host:$ndd
 
fi
if [ "cluster012.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.48/readme.html -H Host:$ndd
  
fi
if [ "cluster013.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.24/readme.html -H Host:$ndd
  
fi
if [ "cluster014.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.87/readme.html -H Host:$ndd
  
fi
if [ "cluster015.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.3/readme.html -H Host:$ndd
  
fi
if [ "cluster016.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.48/readme.html -H Host:$ndd  
fi
if [ "cluster017.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.50/readme.html -H Host:$ndd 
fi
  fi  
if [ "5" = "$choix" ] ;
then echo "${RESETCOLOR}"
echo "${JAUNE} POUR CONNEXION PAR CDN "
echo "${ROUGE}"
if [ "cluster002.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.69 -H Host:$ndd
  
fi
if [ "cluster003.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.85 -H Host:$ndd

fi
if [ "cluster005.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.95 -H Host:$ndd

fi
if [ "cluster006.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.97 -H Host:$ndd
 
fi
if [ "cluster007.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.105 -H Host:$ndd
  
fi
if [ "cluster010.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.107 -H Host:$ndd
  
fi
if [ "cluster011.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.151 -H Host:$ndd
 
fi
if [ "cluster012.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.153 -H Host:$ndd
  
fi
if [ "cluster013.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.83 -H Host:$ndd
  
fi
if [ "cluster014.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.169 -H Host:$ndd
  
fi
if [ "cluster015.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.171 -H Host:$ndd
  
fi
if [ "cluster017.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.171 -H Host:$ndd  
fi
echo "${JAUNE} POUR CONNEXION DIRECT "
echo "${ROUGE}"
if [ "cluster002.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.2 -H Host:$ndd
  
fi
if [ "cluster003.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.4 -H Host:$ndd

fi
if [ "cluster005.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.16 -H Host:$ndd

fi
if [ "cluster006.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.17 -H Host:$ndd
 
fi
if [ "cluster007.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.18 -H Host:$ndd
  
fi
if [ "cluster010.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.19 -H Host:$ndd
  
fi
if [ "cluster011.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.40 -H Host:$ndd
 
fi
if [ "cluster012.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.48 -H Host:$ndd
  
fi
if [ "cluster013.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.24 -H Host:$ndd
  
fi
if [ "cluster014.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.87 -H Host:$ndd
  
fi
if [ "cluster015.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.3 -H Host:$ndd
  
fi
if [ "cluster016.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.48 -H Host:$ndd
  
fi
if [ "cluster017.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.50 -H Host:$ndd
fi
  fi  
if [ "6" = "$choix" ] ;
then echo "${RESETCOLOR}"
echo -n "${BLEU}Nom du fichier: "
read fichier
echo "$fichier"
echo "${JAUNE} POUR CONNEXION PAR CDN "
echo "${ROUGE}"
if [ "cluster002.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.69/$fichier -H Host:$ndd
  
fi
if [ "cluster003.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.85/$fichier -H Host:$ndd

fi
if [ "cluster005.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.95/$fichier -H Host:$ndd

fi
if [ "cluster006.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.97/$fichier -H Host:$ndd
 
fi
if [ "cluster007.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.105/$fichier -H Host:$ndd
  
fi
if [ "cluster010.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.107/$fichier -H Host:$ndd
  
fi
if [ "cluster011.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.151/$fichier -H Host:$ndd
 
fi
if [ "cluster012.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.153/$fichier -H Host:$ndd
  
fi
if [ "cluster013.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.83/$fichier -H Host:$ndd
  
fi
if [ "cluster014.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.169/$fichier -H Host:$ndd
  
fi
if [ "cluster015.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.171/$fichier -H Host:$ndd
  
fi
if [ "cluster017.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 213.186.33.171/$fichier -H Host:$ndd
fi
echo "${JAUNE} POUR CONNEXION DIRECT "
echo "${ROUGE}"
if [ "cluster002.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.2/$fichier -H Host:$ndd
  
fi
if [ "cluster003.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.4/$fichier -H Host:$ndd

fi
if [ "cluster005.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.16/$fichier -H Host:$ndd

fi
if [ "cluster006.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.17/$fichier -H Host:$ndd
 
fi
if [ "cluster007.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.18/$fichier -H Host:$ndd
  
fi
if [ "cluster010.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.19/$fichier -H Host:$ndd
  
fi
if [ "cluster011.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.40/$fichier -H Host:$ndd
 
fi
if [ "cluster012.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.48/$fichier -H Host:$ndd
  
fi
if [ "cluster013.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.24/$fichier -H Host:$ndd
  
fi
if [ "cluster014.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.87/$fichier -H Host:$ndd
  
fi
if [ "cluster015.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.3/$fichier -H Host:$ndd
  
fi
if [ "cluster016.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.48/$fichier -H Host:$ndd
  
fi
if [ "cluster017.ovh.net." = "$CLUSTER" ] ; 
  then curl -I 37.187.184.50/$fichier -H Host:$ndd
fi
  fi   
  
  
echo " Quitter ?"
read quitter
./tool.sh
exit 0  
