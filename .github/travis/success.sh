#!/bin/bash

set -x
set -e

git config --local user.name "Deployment Bot"
git config --local user.email "surelog@googlegroups.com"

case $MODE in
    surelog-uhdm)
        # TODO: copy *.chk.html files to pages
        ;;

    test)
        # Other HTML outputs from there ?
        ;;

    *)
	echo "success.sh: Unknown mode $MODE"
	exit 1
	;;
esac
