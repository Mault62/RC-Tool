#! /bin/bash

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

echo "${BLEU}############# Host ########################${RESETCOLOR}"
echo ""
echo -n "Nom de domaine : "
read ndd
echo "$ndd"
echo ""
echo "${JAUNE}########## HOST ##########${RESETCOLOR}"
echo ""
host "$ndd"
echo ""
echo "${JAUNE}########## HOST www. ##########${RESETCOLOR}"
echo ""
host www."$ndd"
echo ""
echo "${JAUNE}#####################################${RESETCOLOR}"
echo -n "Quitter ?"
read quitter
./tool.sh
exit 0
