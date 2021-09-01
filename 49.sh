#!/bin/bash
#Data alteração 21244
#REV. 1

echo -e "Configurando SAT DIMEP !!!"

if [ -d "${moduloPHPPDV}" ] ; then
echo -e "Validando ${moduloPHPPDV}"
echo "IDE_CNPJ=16716114000172" >  ${moduloPHPPDV}/sat_lab.conf
echo "EMIT_CNPJ=61099008000141" >>  ${moduloPHPPDV}/sat_lab.conf
echo "IDE_IE=111111111111" >>  ${moduloPHPPDV}/sat_lab.conf
echo "IDE_IM=123123" >>  ${moduloPHPPDV}/sat_lab.conf
echo "" >>  ${moduloPHPPDV}/sat_lab.conf
else
echo -e "Diretorio ${moduloPHPPDV} não existe, nada a ser feito."
fi

if [ -d "${PDVJAVA}" ] ; then
echo -e "Validando ${PDVJAVA}"
echo "hostname=192.168.0.228" >  ${PDVJAVA}/ZFILAMSG.CFG
echo "" >>  ${PDVJAVA}/ZFILAMSG.CFG
else
echo -e "Diretorio ${PDVJAVA} não existe, nada a ser feito."
fi

if [ -d "${CTSAT}" ] ; then
echo -e "Validando ${CTSAT}"
echo "<ctsat_local><serie>900011806</serie><layouts>00.07|00.08</layouts><status>1</status><fila_consumer><hostname>192.168.0.228</hostname><port>5672</port><exchange>amq.direct</exchange><routingkey>CTSAT_228_228</routingkey><usuario>zanthus</usuario><senha>zanthus</senha></fila_consumer></ctsat_local>" >  ${CTSAT}/CTSAT_LOCAL.XML
echo "" >>  ${CTSAT}/CTSAT_LOCAL.XML
else
echo -e "Diretorio ${CTSAT} não existe, nada a ser feito."
fi

echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 49.sh" &&
echo -e "****************" &&
veianew ;