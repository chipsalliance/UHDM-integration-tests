#!/bin/bash

set -x
set -e

case $MODE in
    surelog-uhdm)
	make surelog/regression
	;;

    test)
	make TEST=$TEST_CASE $TARGET
	;;

    *)
	echo "script.sh: Unknown mode $MODE"
	exit 1
	;;
esac
