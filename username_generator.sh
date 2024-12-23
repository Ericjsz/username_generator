#!/bin/bash

# 检查是否提供了数量参数
if [ -z "$1" ]; then
  echo "Usage: $0 <number_of_random_strings>"
  exit 1
fi

# 获取输入的数量参数
count=$1

# 检查数量是否为正整数
if ! [[ "$count" =~ ^[0-9]+$ ]] || [ "$count" -le 0 ]; then
  echo "Error: Please provide a positive integer as the number of random strings."
  exit 1
fi

# 循环生成指定数量的随机字符串
for ((i = 1; i <= count; i++)); do
  first_two_letters=$(LC_ALL=C < /dev/urandom tr -dc 'a-z' | head -c2)
  last_four_numbers=$(LC_ALL=C < /dev/urandom tr -dc '0-9' | head -c4)
  echo "${first_two_letters}${last_four_numbers}"
done
