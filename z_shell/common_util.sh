#!/bin/bash

sh_home=~/cg/sh

time_day="`date +%Y%m%d`"
time_hour="`date +%Y%m%d%H`"
time_minute="`date +%Y%m%d%H%M`"
time_second="`date +%Y%m%d%H%M%S`"
USER_HOME=$HOME
email_suffix='zhangxiuchun128@163.com'
pwdd=$PWD

print_error() {
    echo -e "\033[31m[error] ------------------------------------------------------------------------\033[0m"
    echo -e "\033[31m[error] ${1}\033[0m" # 红
    echo -e "\033[31m[error] ------------------------------------------------------------------------\033[0m"
}

error_and_exit() {
    print_error "$1"
    exit 1
}

eexit() {
    print_error "$1"
    exit 1
}

# 检查目录, 没有就直接退出
check_directory() {
    if [ ! -d "${1}" ]; then
        error_and_exit "目录 ${1} 不存在, 无法完成此操作"
    fi
}

# 检查目录, 没有就递归创建
check_create_directory() {
    if [ ! -d "${1}" ]; then
        mkdir -p "$1"
    fi
}

# 检查文件, 没有就直接退出
check_file() {
    log_with_header "文件路径 ${1}"
    if [ ! -e "${1}" ]; then
        error_and_exit "文件 ${1} 不存在, 无法完成此操作"
    fi
}

# 检查文件, 有就直接退出
check_file_not_exist() {
    log "判断文件不存在，文件路径 ${1}"
    if [ -e "${1}" ]; then
        error_and_exit "文件 ${1} 已存在, 无法完成此操作"
    fi
}


log_with_header() {
    echo ""
    echo "[INFO] ------------------------------------------------------------------------"
    echo "[INFO] ${1}"
}

logsh() {
    sleep $2
    echo ""
    echo "[INFO] ------------------------------------------------------------------------"
    echo "[INFO] ${1}"
}


logh() {
    echo ""
    echo "[INFO] ------------------------------------------------------------------------"
    echo "[INFO] ${1}"
}


log() {
    echo "[INFO] ${1}"
}


empty() {
    if [ $# -lt 2 ]; then
        error_and_exit "参数[${1}]不存在, 请指定！ eg： $usage_template"
    fi
}

# 命令执行返回 失败结果 时退出
failed() {
    if [ $1 -gt 0 ]; then
        error_and_exit "${2}！"
    fi
}


# 命令执行返回 成功结果 时退出
failedn() {
    if [ $1 -eq 0 ]; then
        error_and_exit "${2}！"
    fi
}


# 检测脚本执行结果

result(){
    if [ $1 != 0 ];then
	print_error "脚本调用异常，提示信息:$2"
	exit $1
    fi
}



trim(){
   echo `echo $1 | sed 's/ //g'`
}

open(){
    cmd="nohup dde-file-manager $pwdd >/dev/null 2>&1 &"
    eval $cmd
}

# 根据命令启动 应用
start_up(){

    
    nohup $@  > /dev/null 2>&1 &

}


# 遍历目录，获取所有文件方法
# 方法传参：1）$1 -》 目录路径，必传 2）$2 -》 文件后缀，可选
# 自定义业务逻辑处理函数，需要在调用当前函数上下文中定义 do_business 方法，该方法可接收3个参数，$1 -》 符合条件的文件全路径 $2 -》 文件所在目录 $3 -》 文件后缀
function iterator_dir(){
    path=$1 #根目录
    # func=$2 #回调函数
    suffix=$2 # 文件后缀
    empty $path '遍历根目录不存在'
    for file in `ls $1` #注意此处这是两个反引号，表示运行系统命令
    do
	full_path_file_name=$1"/"$file
	if [ -d $full_path_file_name ] #注意此处之间一定要加上空格，否则会报错
	then
	    iterator_dir $full_path_file_name $suffix
	else
	    
	    if [ -z $suffix ];then
		do_business $full_path_file_name $1 $suffix

	    else
		 if echo "$file" | grep -q -E "$suffix$";then
		# if [ "${file##*.}" = "$suffix" ];then
		    # echo ${file##*.}
		    do_business $full_path_file_name $1 $suffix
		fi
	    fi
	    
	fi
    done
}
 

