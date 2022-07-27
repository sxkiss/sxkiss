SKIPUNZIP=0

PATH="$PATH:/system/sbin:/sbin/.magisk/busybox:$(magisk --path)/.magisk/busybox"

MyPrint() 
{
	echo "$@"
	sleep 0.05
}

if [[ ! -z $(which curl) ]]; then
	echo "- Binary_System=$(which curl)"
	echo "Binary_System=\"$(which curl)\"" >> $MODPATH/files/Variable.sh
elif [[ ! -z $(which wget) ]]; then
	echo "- Binary_System=$(which wget)"
	echo "Binary_System=\"$(which wget)\"" >> $MODPATH/files/Variable.sh
else
	abort "- [!] 命令缺失: busybox curl/wget 二进制"
fi

[[ -d /storage/emulated/0/Download ]] && path="Download" || path="download"
paths="/storage/emulated/0/$path/第三方应用下载目录/作者信息/"

if [[ ! -d $paths ]]; then
	mkdir -p $paths
	cp $MODPATH/files/Author_Information/作者主页[root执行前往].sh $paths
	cp $MODPATH/files/Author_Information/作者QQ群[root执行前往].sh $paths
fi

MyPrint " "
MyPrint "(&) v5.2.2更新："
MyPrint "- ① 修复一键执行后部分设备无效问题"
MyPrint "- ② 修复卸载模块后部分设备无法删除模块生成的文件夹问题"
MyPrint "- ③ 更改云端仓库地址：https://gitee.com/Petit-Abba/Third-Party-Redirect"
MyPrint "- ④ 之后只维护5.2.2以上版本 旧版本停止维护"
MyPrint " "
MyPrint "(&) v5.2.1更新："
MyPrint "- ① 判断设备是否有模块所需的二进制文件(当你看到这里就代表有了)"
MyPrint "- ② 修复部分设备刷入后重启无效问题"
MyPrint "- ③ 修复部分设备接收云端更新时卡顿问题"
MyPrint "- ④ 重点就这几个 小处理不列举"
MyPrint " "
MyPrint "(&) v5.1.0更新："
MyPrint "- ① 修复部分设备刷入后卡顿/卡开机问题"
MyPrint "- ② 通过添加网络判断/息屏亮屏判断  减少功耗"
MyPrint "- ③ 版本对比改用 本地版本小于仓库版本  则后台更新配置"
MyPrint "- ④ 移除curl二进制文件  启用Magisk wget命令"
MyPrint "- ⑤ 环境优先使用/system/bin"
MyPrint " "
MyPrint "- 云端版:"
MyPrint "- [1] 同步云端数据"
MyPrint "- [2] 后台更新无需重启"
MyPrint "- [3] 开源仓库: https://gitee.com/Petit-Abba/magisk-modules/tree/master/Redirect"
MyPrint " "
MyPrint "- 如果你想要的应用没有重定向 请在评论区反馈"
MyPrint "- 我会进行适配"
MyPrint " "
MyPrint "- 已完成 重启生效"
