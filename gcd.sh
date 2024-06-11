#!/bin/bash

# ユークリッドの互除法を使用してGCDを計算する関数
function gcd() {
    local a=$1
    local b=$2
    while [ $b -ne 0 ]; do
        local temp=$b
        b=$((a % b))
        a=$temp
    done
    echo $a
}

# スクリプトが2つの引数で呼び出されたかどうかを確認
if [ $# -ne 2 ]; then
     echo "使用方法: $0 num1 num2"
     exit 1
fi

# gcd関数を呼び出して結果を出力
result=$(gcd $1 $2)
echo "$1 と $2 の最大公約数は $result です"
						    
