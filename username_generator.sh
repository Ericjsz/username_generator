#!/bin/bash

# 使用/dev/urandom来生成随机小写字母和数字
# 使用tr命令过滤只需要的字符
# 使用head命令获取所需要的长度

first_two_letters=$(LC_ALL=C < /dev/urandom tr -dc 'a-z' | head -c2)
last_four_numbers=$(LC_ALL=C < /dev/urandom tr -dc '0-9' | head -c4)

echo "${first_two_letters}${last_four_numbers}"

