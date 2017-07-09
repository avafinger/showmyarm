#!/bin/bash

SERVICE_FILE="show-my-arm"
SERVICE_BIN="showmyarm"

if [ -f /usr/local/bin/showmyarm ] ; then
    echo "Service is already installed!"
    echo "Remove before re-install!"
    echo "    sudo service \"$SERVICE_FILE\" uninstall"
    exit 1
fi
if [ -f /etc/init.d/SERVICE_FILE ] ; then
    echo "Service \"SERVICE_FILE\" is already installed!"
    exit 1
fi

arch=$(getconf LONG_BIT)
#if [ ${arch} == "64" ] ; then
#    echo "Linux 64 bit installation!"
#fi
SERVICE_ARCH=$SERVICE_BIN$arch
#echo $SERVICE_ARCH
#echo "--- template ---"
cp -af show-my-arm.service "$SERVICE_FILE"
chmod +x "$SERVICE_FILE"
echo ""

prompt_token() {
  local VAL=""
  while [ "$VAL" = "" ]; do
    echo -n "${2:-$1} (default: $3): "
    read VAL
    if [ "$VAL" = "" ]; then
      VAL="$3"
    fi
  done
  echo -n "${2:-$1}: $VAL"
  echo ""
  VAL=$(printf '%q' "$VAL")
  eval $1=$VAL
  sed -i "s/<$1>/$(printf '%q' "$VAL")/g" $SERVICE_FILE
}

prompt_token 'MYBOARD' ' Board Name' 'arm-board'
prompt_token 'MYPORT' '  Port ' '8888'
echo ""

cp -af "$SERVICE_FILE" /etc/init.d/.
cp -af "$SERVICE_ARCH" /usr/local/bin/showmyarm
update-rc.d "$SERVICE_FILE" defaults
sleep 1
service "$NAME" start
#sleep 1
#service "$NAME" status
echo "Service installed. Please reboot!"
