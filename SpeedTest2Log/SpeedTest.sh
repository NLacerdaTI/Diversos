#!/bin/bash
#####################################################################
# Function      :       SpeedTest-CLI com saída em arquivo de log
# Author        :       NLacerdaTI
#####################################################################

#Definesb
DirLOG="./SpeedTestLogs"
FileLOG="${DirLOG}/Teste_"`date +%F`.log

Separator="───────────────────────────────────────────────────────────"
SeparatorEnd="+============+===========+===========+===========+===========+"

checkLogDir(){
        if [ ! -d "${DirLOG}" ]; then
                mkdir -p "${DirLOG}"
        fi
}

checkLogFile(){
        if [ ! -f "${FileLOG}" ]; then
                touch "${FileLOG}"
        fi
}

execTest(){
        checkLogDir
	checkLogFile
        INIT=`date +%d/%m/%Y-%T`
        echo -e "╭${Separator}╮\n┣ Teste de Velocidade inicializado em: $INIT\n╰${Separator}╯" >> $FileLOG
	speedtest >> $FileLOG
        END=`date +%d/%m/%Y-%T`
        echo -e "╭${Separator}╮\n┣ Teste de Velocidade finalizado em: $END\n╰${Separator}╯\n\n${SeparatorEnd}\n${SeparatorEnd}\n" >> $FileLOG
}

execTest

exit 0
