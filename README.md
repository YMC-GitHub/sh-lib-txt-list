# sh lib txt list
## desc

some function for handle txt list for ymc shell lib

## deps

### test

- [x] sh-lib-path-resolve
- [x] sh-lib-test
- [x] sh-lib-time-cost
- [x] sh-lib-project-dir-map

### prod

- [ ] xxx

## apis

- [x] lang_type_set
- [x] lang_type_get
- [x] lang_step_set
- [x] lang_step_now
- [x] lang_step_get
- [x] lang_sample

```sh
cat src/index.sh |  grep "function " | sed "s/function */- [x] /g"  | sed "s/(.*) *{//g"
```

## feats

- [x] set operation step
- [x] get current step
- [x] support multi language

## usage

### how to use for poduction?

```sh
# get the code

# run the index file
# ./src/index.sh

# or import to your sh file
# source /path/to/the/index file

# simple usage
txt=$(
  cat <<EOF
nw_ip=192.168.10.33
nw_mask=255.255.255.224
EOF
)
txt_list_detail "$txt"
# create a array var named arr here
txt_list_to_arr "$txt" "arr"

declare -A dic
txt_list_to_dic "arr" "dic"
echo "${dic["nw_ip"]}"
echo "${dic["nw_mask"]}"
```

### how to use for developer?

```sh
# get the code

# run test
./test/index.sh
#2 get some fail test
./test/index.sh | grep "it is false"
```

## author

yemiancheng <ymc.github@gmail.com>

## license

MIT
