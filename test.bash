#!/bin/bash 

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

### 変な入力 ###
out=$(echo あ | ./plus)
[ "$?" = 1 ] || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"

out=$(echo | ./plus)
[ "$?" = 1 ] || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"

### 正常な入力 ###
out=$(seq 5 | ./plus)
[ "$?" = 0 ] || ng "$LINENO"
[ "$out" = 15 ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
#exit $res
exit 1
