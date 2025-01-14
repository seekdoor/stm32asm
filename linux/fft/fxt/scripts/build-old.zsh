#! /usr/bin/env zsh

#set -vx

test -n "${PROJ}" || PROJ=${PWD##*\/}

if test -z "${MYZBAKDIR}"; then
    test -n "${ZBAKDIR}" || ZBAKDIR=/bak/zbak
    test -d ${ZBAKDIR} || { echo "${ZBAKDIR} does not exist." 2>&1; exit 1; }
    MYZBAKDIR=${ZBAKDIR}/${PROJ};
    test -d ${MYZBAKDIR} || { echo "${MYZBAKDIR} does not exist." 2>&1; exit 1; }
fi

LAST=$(\ls -1t ${MYZBAKDIR} | head -n 20 | tac )
test -n "${BDATE}" && LAST=fxt-${BDATE}.tgz

#for V in ${=LAST}; do echo $V "+"; done;  exit 0;

select V in ${=LAST}; do
    rm -rf /dev/shm/$PROJ
    cd /dev/shm || exit 2;
    echo $V;
    tar xzf ${MYZBAKDIR}/$V || exit 2;
    cd ${PROJ} || exit 2;
    make lib || exit 3;
    echo $V;
    XTITLE=$V  xterm -g +0+0 -e /bin/zsh &
    echo;
    break;
done

exit 0;
##########################
