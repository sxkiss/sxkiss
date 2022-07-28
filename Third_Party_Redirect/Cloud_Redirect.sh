#!/system/bin/sh
# 酷安@阿巴酱 (Petit-Abba)
# This file detects the version of the cloud file.
# If there is a discrepancy, the update will be downloaded and executed.
# It has been open source and can be safely used.
# Cloud Warehouse: https://gitee.com/Petit-Abba/magisk-modules/tree/master/Redirect
CloudSh="202104101750"

MODDIR="$(dirname $(readlink -f "$0"))"
. $MODDIR/files/Variable.sh

PROCESS_a() {
	ps -ef | grep "Run_Redirect.sh" | grep -v grep | wc -l
}

Network_Connection() {
	if [[ $(ping -c 1 1.2.4.8) ]] >/dev/null 2>&1; then
		echo 0
	elif [[ $(ping -c 1 8.8.8.8) ]] >/dev/null 2>&1; then
		echo 0
	elif [[ $(ping -c 1 114.114.114.114) ]] >/dev/null 2>&1; then
		echo 0
	else
		echo 1
	fi
}

until [[ $(PROCESS_a) -ne 0 ]]; do
	nohup sh $MODDIR/Run_Redirect.sh &
	sleep 1
done

while :
do
	until [[ $(Network_Connection) == 0 ]]; do
		sleep 5
	done

	until [[ $(dumpsys window policy | grep "mInputRestricted" | cut -d= -f2) == "false" ]]; do
		sleep 5
	done

	cd $MODDIR

	if [[ ! -z $(which curl) ]]; then
		curlwget="curl"
		until [[ -f $MODDIR/Redirect.prop ]]; do
			curl -O 'https://raw.githubusercontent.com/sxkiss/sxkiss/master/Third_Party_Redirect/Run_Redirect.prop' >/dev/null 2>&1
			sleep 2
		done
	elif [[ ! -z $(which wget) ]]; then
		curlwget="wget"
		until [[ -f $MODDIR/Redirect.prop ]]; do
			wget 'https://raw.githubusercontent.com/sxkiss/sxkiss/master/Third_Party_Redirect/Run_Redirect.prop' >/dev/null 2>&1
			sleep 2
		done
	fi

	A=`cat "$MODDIR/module.prop" | grep 'VersionNumber=' | awk -F '=' '{print $2}'`
	B=`source $MODDIR/Redirect.prop && echo $VersionNumber`
	if [[ "$A" -lt "$B" ]]; then
		[[ -f $MODDIR/Run_Redirect.sh ]] && rm -rf $MODDIR/Run_Redirect.sh

		until [[ $(PROCESS_a) -eq 0 ]]; do
			kill -9 $(ps -ef | grep Run_Redirect.sh | grep -v grep | awk '{print $2}')
			sleep 1
		done

		until [[ -f $MODDIR/Run_Redirect.sh ]]; do
			if [[ $curlwget == "curl" ]]; then
				curl -O 'https://raw.githubusercontent.com/sxkiss/sxkiss/master/Third_Party_Redirect/Run_Redirect.sh' >/dev/null 2>&1
			elif [[ $curlwget == "wget" ]]; then
				wget 'https://raw.githubusercontent.com/sxkiss/sxkiss/master/Third_Party_Redirect/Run_Redirect.sh' >/dev/null 2>&1
			fi
			sleep 3
		done

		chmod 0777 $MODDIR/Run_Redirect.sh

		until [[ $(PROCESS_a) -ne 0 ]]; do
			nohup sh $MODDIR/Run_Redirect.sh &
			sleep 1
		done

		sed -i "/^description=/c description=$(source $MODDIR/Redirect.prop && echo $description) 当前重定向文件版本:【$B】" "$MODDIR/module.prop"
		sed -i "/^VersionNumber=/c VersionNumber=$B" "$MODDIR/module.prop"
	fi
	[[ -f $MODDIR/Redirect.prop ]] && rm -rf $MODDIR/Redirect.prop
	sleep 1800
done