#!/bin/bash
IGNORE='.git'
find $1|grep -v "$IGNORE"|awk '{ print length($0), $0|"sort -n" }'|cut -f2- -d' '|bcmenu_run
