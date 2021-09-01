#!/bin/bash
#Data alteração 21243

echo -e "#REV. 1"

dpkg-reconfigure tzdata

sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 95.sh" &&
echo -e "****************" &&
veianew ;