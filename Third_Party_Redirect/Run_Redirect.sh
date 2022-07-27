#!/system/bin/sh
# Cloud Configuration
# 酷安@阿巴酱(Petit Abba)
# 所有路径都已验证(√)
Version="202107311440"

#绝对路径
if [[ -d /data/adb/modules/Third_Party_Redirect ]]; then
	#Magisk
	Absolute_Path="/data/adb/modules/Third_Party_Redirect"
else
	#Magisk Lite
	Absolute_Path="/data/adb/lite_modules/Third_Party_Redirect"
fi

MODDIR="$(dirname $(readlink -f "$0"))"
[[ -f ${MODDIR}/files/Variable.sh ]] && . ${MODDIR}/files/Variable.sh
[[ -d /storage/emulated/0/Download ]] && path="Download" || path="download"
[[ ! -z $(which curl) ]] && Binary_System="$(which curl)" || Binary_System="$(which wget)"
MyPrintt() { [[ "${MODDIR}" == "${Absolute_Path}" ]] && echo "${@}" > ${DirectionalPath}/$Version.txt ; }
MyPrint() { [[ "${MODDIR}" == "${Absolute_Path}" ]] && echo "${@}" >> ${DirectionalPath}/$Version.txt || echo "${@}" ; }

DirectionalPath="/storage/emulated/0/${path}/第三方应用下载目录/-定向记录与配置"
[[ ! -d ${DirectionalPath} ]] && mkdir -p ${DirectionalPath}
[[ ! -f ${DirectionalPath}/-定向黑名单.conf ]] && { echo '# 把不需要定向的文件夹名称填写进来（一行一个）

OFF="
#举两个例子
微信
网易云音乐

"' > ${DirectionalPath}/-定向黑名单.conf
}

[[ "${MODDIR}" == "${Absolute_Path}" ]] && [[ ! -d ${DirectionalPath} ]] && mkdir -p ${DirectionalPath}
[[ "${MODDIR}" == "${Absolute_Path}" ]] && [[ ! -f ${DirectionalPath}/$Version.txt ]] && MyPrintt "BinaryFile: ${Binary_System}
你的设备: $(getprop ro.product.manufacturer) $(getprop ro.product.model) 安卓$(getprop ro.build.version.release)
模块名称: $(cat "${MODDIR}/module.prop" | grep 'name=' | awk -F '=' '{print ${2}}')
模块版本: $(cat "${MODDIR}/module.prop" | grep 'version=' | awk -F '=' '{print ${2}}')
文件版本: ${Version}
云端同步: $(date "+%Y-%m-%d %H:%M")

查看说明: 
[1]＝[ 定向成功 ]
[0]＝[ 存在这个路径 但识别到该路径没有用户下载的文件 所以不执行定向 ]
[rm]＝[ 删除指定路径空文件夹 ]
[off] = [ 跳过定向 ]

关于反馈:
请将此页面截图并说明问题

更新内容:
#202107311440
脚本优化

#202107302049
钉钉(包含空间隔离目录) /storage/emulated/0/DingTalk

#202107280444
腾讯文档(包含空间隔离目录) /storage/emulated/0/TencentDocs/download
TapTap /storage/emulated/0/Android/data/com.taptap/files/Download/taptaptmp

#202107260220
Chrome /storage/emulated/0/Android/data/com.android.chrome/files/Download

#202107211340
存储空间隔离后的TIM目录
存储空间隔离后的皮皮虾目录
日志兼容Magisk_Lite
"
MyPrint ">>开始执行<<"

# 影响正确判断用户是否下载文件到目录的无用文件夹
Dung=".tmp
.thumbnails
.trooptmp
.Application"
for S in ${Dung}; do
	[[ -d /data/media/0/QQBrowser/$S ]] && rm -rf /data/media/0/QQBrowser/$S
	[[ -d /data/media/0/Android/data/com.tencent.mtt/sdcard/QQBrowser/$S ]] && rm -rf /data/media/0/Android/data/com.tencent.mtt/sdcard/QQBrowser/$S
	[[ -d /data/media/0/tencent/QQfile_recv/$S ]] && rm -rf /data/media/0/tencent/QQfile_recv/$S
	[[ -d /data/media/0/Tencent/TIMfile_recv/$S ]] && rm -rf /data/media/0/Tencent/TIMfile_recv/$S
	[[ -d /data/media/0/Android/data/com.tencent.tim/Tencent/TIMfile_recv/$S ]] && rm -rf /data/media/0/Android/data/com.tencent.tim/Tencent/TIMfile_recv/$S
	[[ -d /data/media/0/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv/$S ]] && rm -rf /data/media/0/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv/$S
	[[ -d /data/media/0/Android/data/com.tencent.tim/sdcard/Tencent/TIMfile_recv/$S ]] && rm -rf /data/media/0/Android/data/com.tencent.tim/sdcard/Tencent/TIMfile_recv/$S
	[[ -d /data/media/0/Android/data/com.tencent.mobileqq/sdcard/tencent/QQfile_recv/$S ]] && rm -rf /data/media/0/Android/data/com.tencent.mobileqq/sdcard/tencent/QQfile_recv/$S
done

source ${DirectionalPath}/-定向黑名单.conf

#应用
Download() {
	local a="/data/media/0/${2}"
	local aa="/data/media/0/Android/data/${2}"
	local aaa="${2}"
	local b="/data/media/0/${path}/第三方应用下载目录/${1}"
	local c="/storage/emulated/0/${path}/第三方应用下载目录/${1}"

	UMOUNT() {
		umount ${a} >/dev/null 2>&1
		umount ${aa} >/dev/null 2>&1
		umount ${aaa} >/dev/null 2>&1
		umount ${b} >/dev/null 2>&1
		umount ${c} >/dev/null 2>&1
	}

	for NonExecution in $OFF; do
		if [[ ${1} == $NonExecution ]]; then
			[[ ! -z ${a} ]] && [[ -d ${a} ]] && MyPrint "$(date "+[%Y-%m-%d %H:%M:%S]"):[off] ${1}(${a})"
			[[ ! -z ${aa} ]] && [[ -d ${aa} ]] && MyPrint "$(date "+[%Y-%m-%d %H:%M:%S]"):[off] ${1}(${aa})"
			[[ ! -z ${aaa} ]] && [[ -d ${aaa} ]] && MyPrint "$(date "+[%Y-%m-%d %H:%M:%S]"):[off] ${1}(${aaa})"
			if [[ -d ${b} ]]; then
				UMOUNT
				rm -rf ${b} && MyPrint "$(date "+[%Y-%m-%d %H:%M:%S]"):[rm] ${b}"
			fi
			return
		fi
	done

	PathLink() {
		if [[ "$(ls -A "${L//'?'/' '}")" == "" ]]; then
			if [[ -d ${b} ]]; then
				UMOUNT
				rm -rf ${b} && return 2
			fi
			return 0
		else
			[[ ! -d "${b}" ]] && mkdir -p "${b}"
			mount --bind "${L}" "${b}"
			mount --bind "${L}" "${c}"
			chcon u:object_r:media_rw_data_file:s0 "${L}"
			chmod 777 "${b}"
			chown media_rw:media_rw "${b}"
			chown media_rw:media_rw "${c}"
			return 1
		fi
	}

	if [[ -d ${a} ]]; then
		L="${a}"
		PathLink
		[[ $? == 1 ]] && MyPrint "$(date "+[%Y-%m-%d %H:%M:%S]"):[1] ${1}(${L})" || MyPrint "$(date "+[%Y-%m-%d %H:%M:%S]"):[0] ${1}(${L})"
		[[ $? == 2 ]] && MyPrint "$(date "+[%Y-%m-%d %H:%M:%S]"):[rm] ${b}"
	elif [[ -d ${aa} ]]; then
		L="${aa}"
		PathLink
		[[ $? == 1 ]] && MyPrint "$(date "+[%Y-%m-%d %H:%M:%S]"):[1] ${1}(${L})" || MyPrint "$(date "+[%Y-%m-%d %H:%M:%S]"):[0] ${1}(${L})"
		[[ $? == 2 ]] && MyPrint "$(date "+[%Y-%m-%d %H:%M:%S]"):[rm] ${b}"
	elif [[ -d ${aaa} ]]; then
		L="${aaa}"
		PathLink
		[[ $? == 1 ]] && MyPrint "$(date "+[%Y-%m-%d %H:%M:%S]"):[1] ${1}(${L})" || MyPrint "$(date "+[%Y-%m-%d %H:%M:%S]"):[0] ${1}(${L})"
		[[ $? == 2 ]] && MyPrint "$(date "+[%Y-%m-%d %H:%M:%S]"):[rm] ${b}"
	fi
}

#音乐类
Music() {
	local a="/data/media/0/${3}"
	local aa="/data/media/0/Android/data/${3}"
	local b="/data/media/0/${path}/第三方应用下载目录/音乐(Music)/${1}/${2}"
	local c="/storage/emulated/0/${path}/第三方应用下载目录/音乐(Music)/${1}/${2}"

	UMOUNT() {
		umount ${a} >/dev/null 2>&1
		umount ${aa} >/dev/null 2>&1
		umount ${b} >/dev/null 2>&1
		umount ${c} >/dev/null 2>&1
	}

	for NonExecution_a in $OFF; do
		if [[ ${1} == $NonExecution_a ]]; then
			[[ ! -z ${a} ]] && [[ -d ${a} ]] && MyPrint "$(date "+[%Y-%m-%d %H:%M:%S]"):[off] ${1}(${a})"
			[[ ! -z ${aa} ]] && [[ -d ${aa} ]] && MyPrint "$(date "+[%Y-%m-%d %H:%M:%S]"):[off] ${1}(${aa})"
			if [[ -d ${b} ]]; then
				UMOUNT
				rm -rf ${b} && MyPrint "$(date "+[%Y-%m-%d %H:%M:%S]"):[rm] ${b}"
			fi
			return
		fi
	done

	MusicLink() {
		if [[ "$(ls -A "${M//'?'/' '}")" == "" ]]; then
			if [[ -d ${b} ]]; then
				UMOUNT
				rm -rf ${b} && return 2
			fi
			return 0
		else
			[[ ! -d "${b}" ]] && mkdir -p "${b}"
			mount --bind "${M}" "${b}"
			mount --bind "${M}" "${c}"
			chcon u:object_r:media_rw_data_file:s0 "${M}"
			chmod 777 "${b}"
			chown media_rw:media_rw "${b}"
			chown media_rw:media_rw "${c}"
			return 1
		fi
	}

	if [[ -d ${a} ]]; then
		M="${a}"
		MusicLink
		[[ $? == 1 ]] && MyPrint "$(date "+[%Y-%m-%d %H:%M:%S]"):[1] ${1}/${2}(${M})" || MyPrint "$(date "+[%Y-%m-%d %H:%M:%S]"):[0] ${1}/${2}(${M})"
		[[ $? == 2 ]] && MyPrint "$(date "+[%Y-%m-%d %H:%M:%S]"):[rm] ${b}"
	elif [[ -d ${aa} ]]; then
		M="${aa}"
		MusicLink
		[[ $? == 1 ]] && MyPrint "$(date "+[%Y-%m-%d %H:%M:%S]"):[1] ${1}/${2}(${M})" || MyPrint "$(date "+[%Y-%m-%d %H:%M:%S]"):[0] ${1}/${2}(${M})"
		[[ $? == 2 ]] && MyPrint "$(date "+[%Y-%m-%d %H:%M:%S]"):[rm] ${b}"
	fi
}


# 正常默认下载目录
Download 'QQ' 'Android/data/com.tencent.mobileqq/Tencent/QQfile_recv'
Download 'QQ·' 'Android/files/com.tencent.mobileqq/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv'
Download 'QQ.' 'Tencent/QQfile_recv'
Download 'QQ极速版' 'tencent/QQfile_recv'
Download 'TIM' 'Android/data/com.tencent.tim/Tencent/TIMfile_recv'
Download 'TIM.' 'Tencent/TIMfile_recv'
Download 'TIM-Old' 'tencent/TIMfile_recv'
Download '微信' 'Android/data/com.tencent.mm/MicroMsg/Download'
Download '微信.' 'tencent/MicroMsg/Download'
Download '腾讯文档' 'TencentDocs/download'
Download '酷安' 'Android/data/com.coolapk.market/files/Download'
Download '迅雷' 'Android/data/com.xunlei.downloadprovider/files/ThunderDownload'
Download '钉钉' 'DingTalk'
Download 'ADM' 'ADM'
Download 'IDM+' 'IDMP'
Download 'TapTap' 'Android/data/com.taptap/files/Download/taptaptmp'
Download '大白云' '大白·Cloud'
Download '磁力云' 'happy.cloud'
Download '豌豆荚' 'wandoujia/downloader/apk'
Download '文叔叔' 'Wenshushu/Download'
Download '百度App' 'Android/data/com.baidu.searchbox/files/downloads'
Download '腾讯微云' '微云保存的文件'
Download '天翼云盘' "ecloud"
Download '阿里云盘' 'AliYunPan'
Download '百度网盘' 'BaiduNetdisk'
Download '曲奇云盘' 'quqi/pan/download'
Download '神奇磁力' 'Android/data/com.magicmagnet/files'
Download '浩克下载' '浩克下载/Download'
Download '闪电下载' 'Android/data/com.flash.download/files/super_download'
Download '便捷下载' 'Pictures/EasyDownload'
Download '下载神器' 'Android/data/com.xnkjyyh.com'
Download 'QQ浏览器' 'QQBrowser'
Download 'UC浏览器' 'UCDownloads'
Download 'UC-Turbo' 'UCTurbo/Download'
Download '夸克浏览器' 'quark/download'
Download '夸克浏览器' 'Quark/Download'
Download '和彩云网盘' 'M_Cloud/download'
Download '360极速浏览器' '360LiteBrowser/download'
Download '种子播放器' 'TorrentPlayer'
Download '视频下载器' 'Android/data/com.video.download/files'
Download '就爱看磁力' '就爱看磁力'
Download 'Chrome' '/Android/data/com.android.chrome/files/Download'
Download 'NeKogram' 'Android/data/nekox.messenger/files/documents'
Download 'Nekogram.' 'Android/data/tw.nekomimi.nekogram/files/Telegram/Telegram Documents'
Download 'Nekogram-X' 'NekoX'
Download 'TG.' 'Telegram/Telegram Documents'
Download 'TG-X' 'Android/data/org.thunderdog.challegram/files/documents'
Download 'TG--X' 'Android/data/taipei.sean.challegram'
Download 'X浏览器' 'Android/data/com.mmbox.xbrowser/files/downloads'
Download '安卓壁纸' 'Android/data/com.androidesk/files/androidesk'
Download '搞机助手' '/data/data/Han.GJZS/files/Configuration_File'
Download '皮皮虾' 'DCIM/pipixia'
Download '悟饭游戏厅' 'Android/data/com.join.android.app.mgsim.wufun/files/wufan91/46/roms/'
Download '葫芦侠' 'Android/data/com.huluxia.gametools/downloads'
Download '爱吾游戏宝盒' '25game/apps'
Download '360手机助手' '360Download'
#Download '小米互传' 'mishare'

# 存储空间隔离后的应用下载目录(/sdcard)
Download 'QQ.' 'com.tencent.mobileqq/sdcard/tencent/QQfile_recv'
Download 'QQ极速版' 'com.tencent.qqlite/sdcard/tencent/QQfile_recv'
Download 'TIM.' 'com.tencent.tim/sdcard/Tencent/TIMfile_recv'
Download 'TIM-Old' 'com.tencent.tim/sdcard/tencent/TIMfile_recv'
Download '微信.' 'com.tencent.mm/sdcard/tencent/MicroMsg/Download'
Download '钉钉' 'com.alibaba.android.rimet/sdcard/DingTalk'
Download '腾讯文档' 'com.tencent.docs/sdcard/TencentDocs/download'
Download 'ADM' 'com.dv.adm/sdcard/ADM'
Download 'IDM+' 'idm.internet.download.manager.plus/sdcard/IDMP'
Download '文叔叔' 'com.wenshushu.app.android/sdcard/Wenshushu/Download'
Download '大白云' 'com.db.cloud/sdcard/大白·Cloud'
Download '磁力云' 'com.ciliyun/sdcard/happy.cloud'
Download '豌豆荚' 'com.wandoujia.phoenix2/sdcard/wandoujia/downloader/apk'
Download '腾讯微云' 'com.qq.qcloud/sdcard/微云保存的文件'
Download '天翼云盘' "com.cn21.ecloud/sdcard/ecloud"
Download '阿里云盘' 'com.alicloud.databox/sdcard/AliYunPan'
Download '百度网盘' 'com.baidu.netdisk/sdcard/BaiduNetdisk'
Download '百度网盘联运版' 'com.baidu.netdisk.xiaomi.appunion/sdcard/BaiduNetdisk'
Download '曲奇云盘' 'com.quqi.quqioffice/sdcard/quqi/pan/download'
Download '浩克下载' 'com.sausage.download/sdcard/浩克下载/Download'
Download '便捷下载' 'com.lcw.easydownload/sdcard/Pictures/EasyDownload'
Download 'QQ浏览器' 'com.tencent.mtt/sdcard/QQBrowser'
Download 'UC浏览器' 'com.UCMobile/sdcard/UCDownloads'
Download 'UC-Turbo' 'com.ucturbo/sdcard/UCTurbo/Download'
Download '夸克浏览器' 'com.quark.browser/sdcard/quark/download'
Download '夸克浏览器' 'com.quark.browser/sdcard/Quark/Download'
Download '和彩云网盘' 'com.chinamobile.mcloud/sdcard/M_Cloud/download'
Download '360极速浏览器' 'com.qihoo.contents/sdcard/360LiteBrowser/download'
Download '种子播放器' 'com.iiplayer.sunplayer/sdcard/TorrentPlayer'
Download '就爱看磁力' 'com.jak.cili/sdcard/就爱看磁力'
Download 'FlyChat' 'org.telegram.flychat/sdcard/Telegram/Telegram Documents'
Download 'TG' 'org.telegram.messenger/sdcard/Telegram/Telegram Documents'
Download '皮皮虾' 'com.sup.android.superb/sdcard/DCIM/pipixia'
Download '爱吾游戏宝盒' 'com.aiwu.market/sdcard/25game/apps'
Download '360手机助手' 'com.qihoo.appstore/sdcard/360Download'
#Download '小米互传' 'com.miui.mishare.connectivity/cache/sdcard/mishare'

# 存储空间隔离后的应用下载目录(/cache/sdcard)
Download 'QQ.' 'com.tencent.mobileqq/cache/sdcard/tencent/QQfile_recv'
Download 'QQ极速版' 'com.tencent.qqlite/cache/sdcard/tencent/QQfile_recv'
Download 'TIM.' 'com.tencent.tim/cache/sdcard/Tencent/TIMfile_recv'
Download 'TIM-Old' 'com.tencent.tim/cache/sdcard/tencent/TIMfile_recv'
Download '微信.' 'com.tencent.mm/cache/sdcard/tencent/MicroMsg/Download'
Download '钉钉' 'com.alibaba.android.rimet/cache/sdcard/DingTalk'
Download '腾讯文档' 'com.tencent.docs/cache/sdcard/TencentDocs/download'
Download 'ADM' 'com.dv.adm/cache/sdcard/ADM'
Download 'IDM+' 'idm.internet.download.manager.plus/cache/sdcard/IDMP'
Download '文叔叔' 'com.wenshushu.app.android/cache/sdcard/Wenshushu/Download'
Download '大白云' 'com.db.cloud/cache/sdcard/大白·Cloud'
Download '磁力云' 'com.ciliyun/cache/sdcard/happy.cloud'
Download '豌豆荚' 'com.wandoujia.phoenix2/cache/sdcard/wandoujia/downloader/apk'
Download '腾讯微云' 'com.qq.qcloud/cache/sdcard/微云保存的文件'
Download '天翼云盘' "com.cn21.ecloud/cache/sdcard/ecloud"
Download '阿里云盘' 'com.alicloud.databox/cache/sdcard/AliYunPan'
Download '百度网盘' 'com.baidu.netdisk/cache/sdcard/BaiduNetdisk'
Download '百度网盘联运版' 'com.baidu.netdisk.xiaomi.appunion/cache/sdcard/BaiduNetdisk'
Download '曲奇云盘' 'com.quqi.quqioffice/cache/sdcard/quqi/pan/download'
Download '浩克下载' 'com.sausage.download/cache/sdcard/浩克下载/Download'
Download '便捷下载' 'com.lcw.easydownload/cache/sdcard/Pictures/EasyDownload'
Download 'QQ浏览器' 'com.tencent.mtt/cache/sdcard/QQBrowser'
Download 'UC浏览器' 'com.UCMobile/cache/sdcard/UCDownloads'
Download 'UC-Turbo' 'com.ucturbo/cache/sdcard/UCTurbo/Download'
Download '夸克浏览器' 'com.quark.browser/cache/sdcard/quark/download'
Download '夸克浏览器' 'com.quark.browser/cache/sdcard/Quark/Download'
Download '和彩云网盘' 'com.chinamobile.mcloud/cache/sdcard/M_Cloud/download'
Download '360极速浏览器' 'com.qihoo.contents/cache/sdcard/360LiteBrowser/download'
Download '种子播放器' 'com.iiplayer.sunplayer/cache/sdcard/TorrentPlayer'
Download '就爱看磁力' 'com.jak.cili/cache/sdcard/就爱看磁力'
Download 'FlyChat' 'org.telegram.flychat/cache/sdcard/Telegram/Telegram Documents'
Download 'TG' 'org.telegram.messenger/cache/sdcard/Telegram/Telegram Documents'
Download '皮皮虾' 'com.sup.android.superb/cache/sdcard/DCIM/pipixia'
Download '爱吾游戏宝盒' 'com.aiwu.market/cache/sdcard/25game/apps/'
Download '360手机助手' 'com.qihoo.appstore/cache/sdcard/360Download'

# 音乐类(含存储空间隔离后目录)
Music "网易云音乐" "歌曲" "netease/cloudmusic/Music"
Music "网易云音乐" "歌曲" "com.netease.cloudmusic/sdcard/netease/cloudmusic/Music"
Music "网易云音乐" "歌曲" "com.netease.cloudmusic/cache/sdcard/netease/cloudmusic/Music"
Music "网易云音乐" "MV" "netease/cloudmusic/MV"
Music "网易云音乐" "MV" "com.netease.cloudmusic/sdcard/netease/cloudmusic/MV"
Music "网易云音乐" "MV" "com.netease.cloudmusic/cache/sdcard/netease/cloudmusic/MV"
Music "LT-NoLitter网易云音乐" "歌曲" "Android/files/com.netease.cloudmusic/netease/cloudmusic/Music"
Music "LT-NoLitter网易云音乐" "MV" "Android/files/com.netease.cloudmusic/netease/cloudmusic/MV"
Music "酷狗音乐" "歌曲" "kgmusic/download"
Music "酷狗音乐" "歌曲" "com.kugou.android/sdcard/kgmusic/download"
Music "酷狗音乐" "歌曲" "com.kugou.android/cache/sdcard/kgmusic/download"
Music "酷狗音乐" "MV" "kugou/mv"
Music "酷狗音乐" "MV" "com.kugou.android/sdcard/kugou/mv"
Music "酷狗音乐" "MV" "com.kugou.android/cache/sdcard/kugou/mv"
Music "咪咕音乐" "歌曲" "12530/download"
Music "咪咕音乐" "歌曲" "cmccwm.mobilemusic/sdcard/12530/download"
Music "咪咕音乐" "歌曲" "cmccwm.mobilemusic/cache/sdcard/12530/download"
Music "酷我音乐" "歌曲" "KuwoMusic/music"
Music "酷我音乐" "歌曲" "cn.kuwo.player/sdcard/KuwoMusic/music"
Music "酷我音乐" "歌曲" "cn.kuwo.player/cache/sdcard/KuwoMusic/music"
Music "酷我音乐" "MV" "KuwoMusic/mvDownload"
Music "酷我音乐" "MV" "cn.kuwo.player/sdcard/KuwoMusic/mvDownload"
Music "酷我音乐" "MV" "cn.kuwo.player/cache/sdcard/KuwoMusic/mvDownload"
Music "酷我音乐." "歌曲" "cn.kuwo.player/KuwoMusic/music"
Music "酷我音乐." "MV" "cn.kuwo.player/KuwoMusic/mvDownload"
Music "QQ音乐" "歌曲" "qqmusic/song"
Music "QQ音乐" "歌曲" "com.tencent.qqmusic/sdcard/qqmusic/song"
Music "QQ音乐" "歌曲" "com.tencent.qqmusic/cache/sdcard/qqmusic/song"
Music "QQ音乐" "MV" "qqmusic/mv"
Music "QQ音乐" "MV" "com.tencent.qqmusic/sdcard/qqmusic/mv"
Music "QQ音乐" "MV" "com.tencent.qqmusic/cache/sdcard/qqmusic/mv"
Music "DJ多多" "歌曲" "DJDD/Download"
Music "DJ多多" "歌曲" "com.shoujiduoduo.dj/sdcard/DJDD/Download"
Music "DJ多多" "歌曲" "com.shoujiduoduo.dj/cache/sdcard/DJDD/Download"

yywjj="/data/media/0/${path}/第三方应用下载目录/音乐(Music)"
yywjj_a="/storage/emulated/0/${path}/第三方应用下载目录/音乐(Music)"
if [[ -d ${yywjj} ]]; then
	for yy in `ls -A ${yywjj}`; do
		yykwjj="${yywjj}/${yy}"
		yykwjj_a="${yywjj_a}/${yy}"
		if [[ "$(ls -A "${yykwjj//'?'/' '}")" == "" ]]; then
			if [[ -d ${yykwjj} ]]; then
				umount ${yykwjj} >/dev/null 2>&1
				umount ${yykwjj}_a >/dev/null 2>&1
				rm -rf ${yykwjj} && MyPrint "$(date "+[%Y-%m-%d %H:%M:%S]"):[rm] ${yykwjj}"
			fi
		fi
	done
fi

wjj="/data/media/0/${path}/第三方应用下载目录/*
/storage/emulated/0/${path}/第三方应用下载目录/*"

for i in `ls -d ${wjj}`; do
	kwjj=${i}
	if [[ "$(ls -A "${kwjj//'?'/' '}" 2>/dev/null)" == "" ]]; then
		if [[ -d ${kwjj} ]]; then
			umount ${kwjj} >/dev/null 2>&1
			rm -rf ${kwjj} 2>/dev/null && MyPrint "$(date "+[%Y-%m-%d %H:%M:%S]"):[rm] ${kwjj}"
		fi
	fi
done

MyPrint ">>执行完毕<<"

if [[ ! -f ${Absolute_Path}/files/.Judgement1 ]]; then
	echo "#!/system/bin/sh
	if [[ -f ${DirectionalPath}/-定向黑名单.conf.bak ]]; then
		rm -rf ${DirectionalPath}/-定向黑名单.conf.bak
	fi
	{
		sh ${0}
	}&" > ${DirectionalPath}/-一键执行.sh
	touch ${Absolute_Path}/files/.Judgement1
fi

sleep 10
