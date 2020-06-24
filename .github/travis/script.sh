#!/bin/bash

set -x
set -e

# Default is to run tests.
MODE=${MODE:-test}

case $MODE in
    surelog-uhdm)
	make -j $(nproc) surelog/regression
	;;

    test)
	make -j $(nproc) TEST=$TEST_CASE $TARGET
	;;

    *)
	echo "script.sh: Unknown mode $MODE"
	exit 1
	;;
esac
