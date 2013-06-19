#!/bin/sh
rsync -avz -e ssh ~/localfilepath/directory user@hostname.com:'remotefilepath/directory'