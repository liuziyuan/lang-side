#!/bin/sh
ps -ef|grep lantern|grep -v grep|awk '{print $2}'|xargs kill -9
#####
