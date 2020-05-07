#!/bin/sh

THIS_FILE_PATH=$(
  cd $(dirname $0)
  pwd
)
THIS_FILE_NAME=$(basename $0)

source "$THIS_FILE_PATH/sh-lib-path-resolve.sh"
source "$THIS_FILE_PATH/sh-lib-project-dir-map.sh"
source "$THIS_FILE_PATH/sh-lib-test.sh"
source "$THIS_FILE_PATH/sh-lib-time-cost.sh"
source "$SRC_PATH/index.sh"

recordTime "txt-list.curd.cost"

function test_unit(){
txt=$(
  cat <<EOF
nw_ip=192.168.10.33
nw_mask=255.255.255.224
EOF
)

txt_list_detail "$txt"
txt_list_to_arr "$txt" "arr"
# val
echo "${arr[@]}"
echo "${arr[0]}"
# key
echo "${!arr[@]}"
# size
echo "${#arr[@]}"
#
declare -A dic
txt_list_to_dic "arr" "dic"
# val
echo "${dic[@]}"
echo "${dic["nw_ip"]}"
# key
echo "${!dic[@]}"
# size
echo "${#dic[@]}"
}

function test_main(){
  test_unit
  #test_e2e
}
#test_unit
#test_e2e
test_main
#lang_sample

#echo ${lang_step_dic[@]}

caculateTime "txt-list.curd.cost"

## file-usage
# ./test/index.sh
