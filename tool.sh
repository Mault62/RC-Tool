 #! /bin/bash
 
 
 #### Initialisation des variables ####
 
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
 
#### Fin initialisation variables ####



echo "${BLEU}############### RC_TOOLS #################${RESETCOLOR}"
echo "${BLEU}  ______   ____    ____  __    __  ${RESETCOLOR}"
echo "${BLEU} /  __  \  \   \  /   / |  |  |  | ${RESETCOLOR}"
echo "${BLEU}|  |  |  |  \   \/   /  |  |__|  | ${RESETCOLOR}"
echo "${BLEU}|  |  |  |   \      /   |   __   | ${RESETCOLOR}"
echo "${BLEU}|   --   |    \    /    |  |  |  | ${RESETCOLOR}"
echo "${BLEU} \______/      \__/     |__|  |__| ${RESETCOLOR}"

echo "${JAUNE}"
echo -n "0 - Commande de base"
echo ""
echo -n "1 - WHOIS + DIG"
echo ""
echo -n "2 - Propagation de la zone"
echo ""
echo -n "3 - Vérification sur un serveur "
echo ""
echo -n "4 - Redirection Mail"
echo ""
echo -n "5 - Host domaine"
echo ""
echo -n "6 - WHOIS + DIG @DNS"
echo ""
echo -n "7 - Nettoyer l'affichage"
echo ""
echo -n "8 - Erreur CDN"
echo "${RESETCOLOR}"

echo -n "Votre choix : "
read choix
echo ""
if [ "0" = "$choix" ] ;
  then
  echo -n "# "
  read commande
  echo ""
  $commande
fi
if [ "1" = "$choix" ] ; 
  then ./dig.sh
  exit 1
fi
if [ "2" = "$choix" ] ; 
  then ./propa.sh
  exit 1
fi
if [ "3" = "$choix" ] ; 
  then ./servpropa.sh
  exit 1
fi
if [ "4" = "$choix" ] ; 
  then ./mail.sh
  exit 1
fi
if [ "5" = "$choix" ] ; 
  then ./host.sh
  exit 1
fi
if [ "6" = "$choix" ] ; 
  then ./digat.sh
  exit 1
fi
if [ "7" = "$choix" ] ; 
  then 
  clear
fi
if [ "8" = "$choix" ] ; 
  then ./520.sh
  exit 1
fi
echo ""
echo ""
echo ""
./tool.sh
exit 0
