#!/bin/bash

# 跳到当前目录
cd $(dirname "$0")

# ### 配置 ###
# 项目名
PROJECT_NAME="Pear-Admin-Boot"
BRANCH="master"
VERSION="1.4.1-RELEASE"

# ### 自动计算的变量 ###
SOURCE_DIR=$(pwd)
BASE_DIR="$(readlink -f $SOURCE_DIR/..)"
RUNTIME_DIR="$BASE_DIR/runtime/$PROJECT_NAME"
CONFIGURE_DIR="$BASE_DIR/configure/$PROJECT_NAME"

# 拉取代码
git add .
git stash
git checkout $BRANCH
git pull origin
echo '代码拉取完成.'

# 编译
cp -fv $CONFIGURE_DIR/* "$SOURCE_DIR/pear-entrance/src/main/resources"

mvn clean package -Dmaven.test.skip

# ### 重启服务 ###

# 创建运行目录
mkdir -p ${RUNTIME_DIR}

# 复制重启脚本到运行目录
cp -fv "$SOURCE_DIR/restart.sh" ${RUNTIME_DIR}
chmod u+x "$RUNTIME_DIR/restart.sh"

# 复制编译结果到运行目录
cd "$SOURCE_DIR/pear-entrance/target"
rm -fv "pear-entrance-$VERSION.jar"
find . -name "pear-entrance-$VERSION.jar" | xargs -i cp -fv {} "$RUNTIME_DIR/pear-entrance-$VERSION.jar"

NEWPROJECT = "pear-entrance-$VERSION.jar"

# 调用重启脚本
${RUNTIME_DIR}/restart.sh ${NEWPROJECT}
