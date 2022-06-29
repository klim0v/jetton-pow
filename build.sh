#!/bin/bash

#
# need FUNC_STDLIB_PATH and FIFTPATH env
#

MINPUT="./func/main.func"
OUTPUT="./auto/code"

echo "building \"${MINPUT}\""

func -PA -o "${OUTPUT}.fif" ${FUNC_STDLIB_PATH} ${MINPUT}
echo -e "\"TonUtil.fif\" include\n$(cat ${OUTPUT}.fif)" > "${OUTPUT}.fif"
echo "\"${OUTPUT}.fif\" include 2 boc+>B \"${OUTPUT}.boc\" B>file" | fift -s