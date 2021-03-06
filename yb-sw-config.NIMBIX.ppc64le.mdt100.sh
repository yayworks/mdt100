#!/bin/bash
#################################################################################################
#                                                                                               #
# yb--sw-config.NIMBIX.ppc64le.mdt100.sh - Software installs & configuration for MDT Labi       #
#                                                                                               #
# Copyright (C) 2017 Yayworks, Inc. - All Rights Reserved                                       #
#                                                                                               #
# Last revised 06/21/2017                                                                       #
#                                                                                               #
#################################################################################################
        display_usage() {
                echo "Run this script as ssh_user from /home/ssh_user directory"
                echo "Install nodejs SDK in /usr/local/node"
                }
#### NOTE: This file is to be used for Docker image creation
#### After the instantiation of Docker image, yw-config....sh needs to be run for env coonfig
#################################################################################################

sudo /opt/ibm/xlC/13.1.5/bin/xlc_configure <<EOF
1
EOF
#
sudo /opt/ibm/xlf/15.1.5/bin/xlf_configure <<EOF
1
EOF

wget https://repo.continuum.io/archive/Anaconda2-4.4.0-Linux-ppc64le.sh

(
bash Anaconda2-4.4.0-Linux-ppc64le.sh  <<EOF
yes
yes
EOF

) > com.out

rm com.out

###This finally did work
#/root/anaconda3/bin/conda create -n tensorflow python=3.6 <<EOF
#y
#EOF

#source /root/anaconda3/bin/activate tensorflow

#/root/anaconda3/bin/conda install -c conda-forge tensorflow <<EOF
#y
#EOF


exit 0


