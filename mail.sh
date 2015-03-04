
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

echo "${BLEU}############# Redirection Mail ########################${RESETCOLOR}"
echo ""
echo -n "Nom de domaine : "
read ndd
echo "${ROUGE}$ndd${RESETCOLOR}"
echo ""
echo -n "Mail : "
read mail
echo "${ROUGE}$mail${RESETCOLOR}"
echo "${JAUNE}##########  MX ##########${RESETCOLOR}"
echo ""
dig mx "$ndd" +short
echo ""
echo "${JAUNE}##########  Redirection Mail ##########${RESETCOLOR}"
echo ""
dig txt "$mail".at."$ndd" +short
echo ""
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
./mail.sh
fi
exit 0
