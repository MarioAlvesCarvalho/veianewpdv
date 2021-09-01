#!/bin/bash
#Data alteração 21243

echo -e "#REV. 1"

echo -e 'Aguarde, conectando no ftp.zanthus.com.br' &&
echo -e 'Atualizando bibliotecas para o PATH_COMUM!!!' &&
sleep 3 &&

if [ -d "/Zanthus/Zeus/lib" ] ; then
echo -e "Validando /Zanthus/Zeus/lib"
rsync -uv ${PATH_COMUM}/so/* /Zanthus/Zeus/lib
echo -e "***** Bibliotecas atualizadas com Sucesso LIB *****"
else
echo -e "Diretoriio /Zanthus/Zeus/lib não existe, não foi possivel atualizar as bibliotecas"
fi

if [ -d "/Zanthus/Zeus/lib_co5" ] ; then
echo -e "Validando /Zanthus/Zeus/lib_co5"
rsync -uv ${PATH_COMUM}/so_co5/* /Zanthus/Zeus/lib_co5
echo -e "***** Bibliotecas atualizadas com Sucesso LIB_CO5 *****"
else
echo -e "Diretoriio /Zanthus/Zeus/lib_co5 não existe, não foi possivel atualizar as bibliotecas"
fi

if [ -d "/Zanthus/Zeus/lib_r64" ] ; then
echo -e "Validando /Zanthus/Zeus/lib_r64"
rsync -uv ${PATH_COMUM}/so_r64/* /Zanthus/Zeus/lib_r64
echo -e "***** Bibliotecas atualizadas com Sucesso LIB_R64 *****"
else
echo -e "Diretoriio /Zanthus/Zeus/lib_r64 não existe, não foi possivel atualizar as bibliotecas"
fi

if [ -d "/Zanthus/Zeus/lib_u64" ] ; then
echo -e "Validando /Zanthus/Zeus/lib_u64"
rsync -uv ${PATH_COMUM}/so_u64/* /Zanthus/Zeus/lib_u64
echo -e "***** Bibliotecas atualizadas com Sucesso LIB_U64 *****"
else
echo -e "Diretoriio /Zanthus/Zeus/lib_u64 não existe, não foi possivel atualizar as bibliotecas"
fi

if [ -d "/Zanthus/Zeus/lib_u32" ] ; then
echo -e "Validando /Zanthus/Zeus/lib_u32"
rsync -uv ${PATH_COMUM}/so_ubu/* /Zanthus/Zeus/lib_u32
echo -e "***** Bibliotecas atualizadas com Sucesso LIB_U32 *****"
else
echo -e "Diretoriio /Zanthus/Zeus/lib_u32 não existe, não foi possivel atualizar as bibliotecas"
fi

echo -e "***** Executando ldconfig*****"
ldconfig 
sleep 1 &&
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "****************" &&
echo -e "Termino do 03.sh" &&
echo -e "****************" &&
veianew ;