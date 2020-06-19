#!/bin/bash

set -x
set -e

git config --local user.name "Deployment Bot"
git config --local user.email "surelog@googlegroups.com"

case $MODE in
    surelog-uhdm)
	# Copy coverage HTML to be ready for github pages.
	./.github/travis/surelog-coverage-pages.sh
        ;;

    test)
        # Other HTML outputs from there ?
        ;;

    *)
	echo "success.sh: Unknown mode $MODE"
	exit 1
	;;
esac
