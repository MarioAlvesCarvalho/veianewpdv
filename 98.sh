#!/bin/bash
#Data alteração 21243

echo -e "#REV. 1"

if [ -d "${moduloPHPPDV}" ] ; then
echo -e "Validando ${moduloPHPPDV}"
rm -rf ${moduloPHPPDV}/*odulo*.zip
else
echo -e "Diretorio ${moduloPHPPDV} não existe, nada a ser feito."
fi

sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 98.sh" &&
echo -e "****************" &&
veianew ;