#!/bin/bash

apt-get update
apt-get -y install software-properties-common
add-apt-repository ppa:git-core/ppa
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
apt-get install git-lfs
git lfs install

pip3 install xlsxwriter
if [ "`which apt`" == "/usr/bin/apt" ]; then
  apt-get install bc
elif [ "`which yum`" == "/usr/bin/yum" ]; then
  yum install bc
fi

##############################################################

echo "##########################################"
echo "###      Set up CNN_Tensorflow         ###"
echo "##########################################"
cd CNN_Tensorflow
./setup.sh
cd ..


echo "##########################################"
echo "###     Set up Mask_RCNN               ###"
echo "##########################################"
cd Mask_RCNN
./setup.sh
cd ..

echo "##########################################"
echo "###      Set up DeepInterest           ###"
echo "##########################################"
cd DeepInterest
./setup.sh
cd ..


echo "##########################################"
echo "###       Set up DSSD                  ###"
echo "##########################################"
cd DSSD
./setup.sh
cd ..

echo "##########################################"
echo "###       Set up NCF                   ###"
echo "##########################################"
cd NCF
./setup.sh
cd ..

echo "##########################################"
echo "###       Set up DIEN                  ###"
echo "##########################################"
cd DIEN
./prepare_dataset.sh
cd ..
