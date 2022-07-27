#!/system/bin/sh
MODDIR="$(dirname $(readlink -f "$0"))"

until [[ $(getprop sys.boot_completed) -eq 1 ]]; do
	sleep 2
done

sdcard_rw() {
	local test_file="/sdcard/Android/.Redirect_test"
	touch $test_file
	while [[ ! -f $test_file ]]; do
		touch $test_file
		sleep 1
	done
	rm $test_file
}

PROCESS() {
	ps -ef | grep "Cloud_Redirect.sh" | grep -v grep | wc -l
}

ROOTS() {
	chmod 777 $1
	chown root:root $1
}

sdcard_rw

if [[ "$(cat $MODDIR/files/Variable.sh | grep "$PATH")" == "" ]]; then
	echo "" >> $MODDIR/files/Variable.sh
	echo "PATH=\"$PATH:/system/sbin:/sbin/.magisk/busybox:$(magisk --path)/.magisk/busybox\"" >> $MODDIR/files/Variable.sh
fi

ROOTS $MODDIR/files/Author_Information/QQGroup
ROOTS $MODDIR/files/Author_Information/Coolapk
ROOTS $MODDIR/Cloud_Redirect.sh

until [[ $(PROCESS) -ne 0 ]]; do
	nohup sh $MODDIR/Cloud_Redirect.sh &
	sleep 2
done