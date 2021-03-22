#!/bin/bash
# ----------------------------------------------------------------------------
# 重启脚本，停止现在正运行的服务，然后重新启动它
# ----------------------------------------------------------------------------

# 跳到当前目录
cd $(dirname "$0")

# ----------------------------------------------------------------------------
# Arguments:
#   $1 PROJECT_NAME 被启动的服务的名称
# Returns:
#   None
# ----------------------------------------------------------------------------
readonly PROJECT_NAME=$1

# ----------------------------------------------------------------------------
# Configs:
#   MAX_CLOSE_WAIT 停止当前服务的超时时间
#   MAX_CLOSE_WAIT_KILL9 当停止当前服务超时后，使用 kill -9 来停止服务的超时时间
# ----------------------------------------------------------------------------
readonly MAX_CLOSE_WAIT=60
readonly MAX_CLOSE_WAIT_KILL9=10

# ----------------------------------------------------------------------------
# Global Variables:
#   BASE_DIR 当前目录的绝对路径
#   PID_FILE 存放服务的 pid 的文件的绝对路径
#   JAR_FILE 被启动的服务文件的绝对路径
# ----------------------------------------------------------------------------
readonly BASE_DIR=$(pwd)
readonly PID_FILE="${BASE_DIR}/${PROJECT_NAME}.pid"
readonly JAR_FILE="${BASE_DIR}/${PROJECT_NAME}.jar"

# ----------------------------------------------------------------------------
# 等待进程关闭，在等待过程中会输出已等待的时间
# Arguments:
#   $1 pid 等待的 PID
#   $2 maxWait 最长等待时间(秒)
# Returns:
#   0 关闭成功
#   1 关闭失败
# Variables:
#   wait_time 已经等待了多少秒
# ----------------------------------------------------------------------------
function wait_close() {
  local wait_time=0
  while [[ -e "/proc/$1" && ${wait_time} -lt $2 ]]; do
    sleep 1

    wait_time=$(expr ${wait_time} + 1)
    echo "已等待 ${wait_time} / $2 秒"
  done

  if [[ -e "/proc/$1" ]]; then
    return 1
  else
    return 0
  fi
}

# ----------------------------------------------------------------------------
# 关闭进程，会输出关闭状态
# Arguments:
#   $1 pidFile 保存被关闭进程 PID 的文件的绝对路径
# Returns:
#   0 关闭成功
#   1 关闭失败
# Variables:
#   PID 被关闭进程的 PID
# ----------------------------------------------------------------------------
function close_by_pid() {
  # 首先判断是否存在 PID 文件
  if [[ ! -e $1 ]]; then
    echo "没有找到旧服务，无需执行关闭流程"
    return 0
  fi

  # 读出被关闭进程的 PID
  local -r PID=$(cat $1)

  # 如果进程仍然在运行，则试着通过 kill 命令杀掉它
  if [[ -e "/proc/${PID}" ]]; then
    echo "关闭当前服务，PID=${PID}"
    kill -15 ${PID}
    wait_close ${PID} ${MAX_CLOSE_WAIT}
  else
    echo "没有找到旧服务"
    return 0
  fi

  # 如果 kill 命令失败了，则试着通过 kill -9 杀掉它
  if [[ -e "/proc/${PID}" ]]; then
    echo "尝试通过 kill -9 关闭"
    kill -9 ${PID}
    wait_close ${PID} ${MAX_CLOSE_WAIT_KILL9}
  fi

  # 如果 kill -9 仍然失败，则返回错误
  if [[ -e "/proc/${PID}" ]]; then
    echo "关闭旧服务失败"
    return 1
  fi

  echo "旧服务关闭完成"
  return 0
}

# 关闭旧服务
close_by_pid ${PID_FILE}

# 启动新服务
echo '启动服务开始'
nohup java \
    -Dfile.encoding=UTF-8 \
    -Xmx1024m \
    -jar ${JAR_FILE} > ${PROJECT_NAME}.log 2>&1 &

# 记录新服务的 PID
echo $! > ${PID_FILE}
echo "重启服务完成，服务PID=$!"