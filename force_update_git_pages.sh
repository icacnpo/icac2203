#!/bin/bash
yourname=spicy202110
yourtoken=`cat .git/config  |grep url\ =|head -n 1|awk -F : '{printf $3}'|awk -F@ '{printf $1}'`
yourrepo=spicy_20211014

echo curl -u ${yourname}:${yourtoken} \
    -X POST \
    https://api.github.com/repos/${yourname}/${yourrepo}/pages/builds

echo
echo 'https://api.github.com/repositories/416967257/pages/builds/latest'
echo 'https://api.github.com/repositories/416967257/'
echo
