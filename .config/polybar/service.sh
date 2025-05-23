#!/usr/bin/env bash

# Systemd service manager for polybar

# Usage:
# service.sh toggle <service>
# service.sh status <service>
# service.sh start <service>
# service.sh stop <service>
# service.sh restart <service>

COMMAND=$1
UNIT=$2

case $COMMAND in
    "toggle")
        if systemctl --user is-active --quiet $UNIT; then
            systemctl --user stop $UNIT
        else
            systemctl --user start $UNIT
        fi
        ;;
    "status")
        echo $UNIT
        systemctl --user is-active --quiet $UNIT
        exit $?
        ;;
    "start")
        systemctl --user start $UNIT
        ;;
    "stop")
        systemctl --user stop $UNIT
        ;;
    "restart")
        systemctl --user restart $UNIT
        ;;
    *)
        echo "Usage: $0 {toggle|status|start|stop|restart} <service>"
        exit 1
        ;;
esac
