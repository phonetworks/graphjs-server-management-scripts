#!/bin/sh
graphjs-update && graphjs-restart
ssh accounts-2 "graphjs-update && graphjs-restart"
ssh accounts-3 "graphjs-update && graphjs-restart"
ssh accounts-1.groups2.com "graphjs-update && graphjs-restart"
ssh accounts-2.groups2.com "graphjs-update && graphjs-restart"
