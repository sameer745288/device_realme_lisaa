#!/vendor/bin/sh
#

function switch_according_to_nand() {
        devinfo=`cat /proc/devinfo/ufs`
        v7nand="KLUFG4LHGC-B0E1"
        contain=$(echo $devinfo | grep "${v7nand}")

        if [[ "$contain" != "" ]]; then
                echo bfq > /sys/block/sda/queue/scheduler
                echo bfq > /sys/block/sdb/queue/scheduler
                echo bfq > /sys/block/sdc/queue/scheduler
        fi
}

switch_according_to_nand
