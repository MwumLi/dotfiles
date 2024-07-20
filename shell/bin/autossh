#!/bin/bash

# 配置文件路径  
CREDENTIALS_FILE="$HOME/.bin/credentials.conf"

connection=$1

# 读取配置文件以查找密码  
PASS=$(grep "^$connection:" "$CREDENTIALS_FILE" | cut -d: -f2)  
  
# 检查是否找到了密码  
if [ -z "$PASS" ]; then  
    echo "Warn: No password found for user $USER_NAME"  
    ssh $@
    exit $?
fi

sshpass -p "$PASS" ssh -o StrictHostKeyChecking=no $@
