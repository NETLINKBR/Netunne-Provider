#!/bin/sh
# controlar velocidade de objetos baixados direto do proxy
BANDWIDTH=100mbit
CLASSID=3
debug=""
MARK=1
# controlar pacotes com marcacao na banda escolhida
for dev in eth0 eth1 eth2 eth3 eth4; do
    r=`ip link show dev $dev 2>/dev/null 1>/dev/null; echo $?`
    if [ "$r" = "0" ]; then
  echo Set QoS Cache Full for $dev
  for cmd in del add; do
   $debug tc class  $cmd dev $dev parent 1:1 classid 1:$CLASSID htb rate $BANDWIDTH ceil $BANDWIDTH prio 6 2>/dev/null
   $debug tc qdisc  $cmd dev $dev parent 1:$CLASSID handle $CLASSID sfq perturb 10 2>/dev/null
   $debug tc filter $cmd dev $dev parent 1:0 protocol ip prio 200 handle 0x$MARK fw classid 1:$CLASSID 2>/dev/null
  done
    fi
done
#
