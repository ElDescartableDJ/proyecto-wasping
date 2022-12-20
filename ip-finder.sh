#!/bin/bash

ip=`ip addr | grep wlan | grep -o '[0-9][0-9][0-9].[0-9][0-9][0-9].\w*\.\w*/\w*'`

