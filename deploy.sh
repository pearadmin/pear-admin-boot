#!/bin/sh

# 跳到当前目录
cd `dirname "$0"`

# ### 配置 ###
# 项目名
PROJECT_NAME="api-service"
# 远端分支
GIT_BRANCH="master"
# 远程头名称
REMOTE_HEAD="origin"

# ### 自动计算的变量 ###
SOURCE_DIR=$(pwd)
BASE_DIR="$SOURCE_DIR/.."
RUNTIME_DIR="$BASE_DIR/runtime/$PROJECT_NAME"
CONFIGURE_DIR="$BASE_DIR/configure/$PROJECT_NAME"

# ### 使用最新分支代码 ###
git add .
git stash
git pull
echo '代码拉取完成.'

# ### 编译 ###
# copy 配置文件
cp -fv $CONFIGURE_DIR/* "$SOURCE_DIR/src/main/resources"

# 编译代码
./gradlew clean bootJar

# ### 重启服务 ###
# 创建运行目录
mkdir -p ${RUNTIME_DIR}

# 复制重启脚本到运行目录
cp -fv "$SOURCE_DIR/restart" ${RUNTIME_DIR}
chmod u+x "$RUNTIME_DIR/restart"

# 复制编译结果到运行目录
cd "$SOURCE_DIR/build/libs"
find . -name "$PROJECT_NAME-*.*.*-*.jar" | xargs -i cp -fv {} "$RUNTIME_DIR/$PROJECT_NAME.jar"

# 调用重启脚本
${RUNTIME_DIR}/restart ${PROJECT_NAME}
