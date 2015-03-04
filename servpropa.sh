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
 
 
echo "${BLEU}############# Propagation sur serveur choisis ########################${RESETCOLOR}"
echo ""
echo -n "Nom de domaine : "
read ndd
echo "$ndd"
echo ""

echo "${JAUNE}Choisissez la localisation : ${RESETCOLOR}"
echo -n "${ROUGE}1 - FR            Roubaix"
echo ""
echo -n "2 - USA           Los Angeles"
echo ""
echo -n "3 - Bresil"
echo ""
echo -n "4 - Taiwan"
echo ""
echo -n "5 - Russie        Saint Petersburg"
echo ""
echo -n "6 - Google"
echo ""
echo -n "0 - Quitter"
echo "${RESETCOLOR}"
echo ""
echo -n "Votre choix : "
read choix

echo "${JAUNE}-----------------------------------"
echo "Domaine : $ndd"
echo "Localisation: $choix"

if [ "1" = "$choix" ] ; 
  then
  echo "###  FR - Roubaix ###${RESETCOLOR}"
  dig ns "$ndd" +short
  dig a "$ndd" +short
  varhost=$(dig a "$ndd" +short)
  host "$varhost"
  dig mx "$ndd" +short
  echo ""
fi

if [ "2" = "$choix" ] ; 
  then
echo "### USA - Los Angeles ###${RESETCOLOR}"
dig ns "$ndd" @76.91.186.10 +short
dig a "$ndd" @76.91.186.10 +short
varhost=$(dig a "$ndd" +short)
host "$varhost"
dig mx "$ndd" @76.91.186.10 +short
echo ""
fi

if [ "3" = "$choix" ] ; 
  then
echo "### Bresil ###${RESETCOLOR}"
dig ns "$ndd" @177.200.94.141 +short
dig a "$ndd" @177.200.94.141 +short
varhost=$(dig a "$ndd" +short)
host "$varhost"
dig mx "$ndd" @177.200.94.141 +short
echo ""
fi

if [ "4" = "$choix" ] ;
  then 
echo "### Taiwan ###${RESETCOLOR}"
dig ns "$ndd" @140.119.162.48 +short
dig a "$ndd" @140.119.162.48 +short
varhost=$(dig a "$ndd" +short)
host "$varhost"
dig mx "$ndd" @140.119.162.48 +short
echo ""
fi

if [ "5" = "$choix" ] ; 
  then
echo "### Russie - Saint Petersburg ###${RESETCOLOR}"
dig ns "$ndd" @5.19.253.32 +short
dig a "$ndd" @5.19.253.32 +short
varhost=$(dig a "$ndd" +short)
host "$varhost"
dig mx "$ndd" @5.19.253.32 +short
echo ""
fi

if [ "6" = "$choix" ] ; 
  then
echo "### Google ###${RESETCOLOR}"
dig ns "$ndd" @8.8.8.8 +short
dig a "$ndd" @8.8.8.8 +short
varhost=$(dig a "$ndd" +short)
host "$varhost"
dig mx "$ndd" @8.8.8.8 +short
echo ""
fi

if [ "0" = "$choix" ] ; 
  then
 ./rc.sh
  exit 0
fi


echo "${JAUNE}#####################################${RESETCOLOR}"
echo -n "${BLEU}Quitter ?${RESETCOLOR}"
echo ""
echo -n "${ROUGE}1 - oui"
echo ""
echo -n "2 - non${RESETCOLOR}"
echo ""
echo -n "Réponse "
read choix
if [ "1" = "$choix" ] ; 
  then
./tool.sh
  else
./servpropa.sh
fi
exit 0
