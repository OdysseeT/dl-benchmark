#!/bin/bash

add-apt-repository ppa:git-core/ppa
apt-get update
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
apt-get -y install software-properties-common bc git-lfs
git lfs install

pip3 install xlsxwriter


##############################################################

echo "##########################################"
echo "###      Set up CNN_Tensorflow         ###"
echo "##########################################"
cd CNN_Tensorflow
./setup.sh
cd ..


: <<'END'

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

echo "##########################################"
echo "### Set up Faster_RCNN                 ###"
echo "##########################################"
cd Faster_RCNN
./setup.sh
cd ..

echo "##########################################"
echo "### Set up WideDeep                    ###"
echo "##########################################"
cd WideDeep
./setup.sh
cd ..

echo "##########################################"
echo "### Set up CPN                         ###"
echo "##########################################"
cd CPN
./setup.sh
cd ..

echo "##########################################"
echo "### Set up SegLink                     ###"
echo "##########################################"
cd SegLink
./setup.sh
cd ..

echo "##########################################"
echo "###   Set up CRNN                      ###"
echo "##########################################"
cd CRNN
./setup.sh
cd ..

END
