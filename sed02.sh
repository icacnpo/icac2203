#!/bin/bash

toptop=icac2203

[ -d docs ] && [ ! -d docs/${toptop} ] || exit
cp -a docs/ ${toptop}/
mv ${toptop}/ docs/

cat scripts.Hugo/config.toml \
		|grep ^title\ *= \
		|grep .github.io \
		&& rm -f public/CNAME \
		|| ls -l public/CNAME
