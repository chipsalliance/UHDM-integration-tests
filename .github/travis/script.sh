#!/bin/bash

set -x
set -e

# Default is to run tests.
MODE=${MODE:-test}

cd Surelog
git apply ../Surelog.patch
cd ..

case $MODE in
    surelog-uhdm)
	make -j $(nproc) surelog/regression
	;;

    warm-up-cache-surelog)
	make -j $(nproc) surelog
	;;

    warm-up-cache-yosys)
	make -j $(nproc) yosys/yosys
	;;

    test)
	make -j $(nproc) ENABLE_READLINE=0 PRETTY=0 TEST=$TEST_CASE $TARGET
	;;

    *)
	echo "script.sh: Unknown mode $MODE"
	exit 1
	;;
esac
