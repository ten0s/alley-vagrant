#!/bin/bash

source /opt/mono-3.2.8/env.rc
fastcgi-mono-server4 /applications=/power:/opt/poweralleyui/ /socket=tcp:{{ poweralleyui_mono_ip }}:8877 /verbose
