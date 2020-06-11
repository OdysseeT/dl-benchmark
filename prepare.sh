#!/bin/bash

echo "##########################################"
echo "###        Download dataset            ###"
echo "##########################################"
cd dataset
./prepare_dataset.sh
cd ..

echo "##########################################"
echo "###        Mask_RCNN                   ###"
echo "##########################################"
cd Mask_RCNN
./prepare_dataset.sh # Normally download COCO 2014 - but have changed to use 2017
cd ..

echo "##########################################"
echo "###        DeepInterest                ###"
echo "##########################################"
cd DeepInterest
./prepare_dataset.sh
cd ..

echo "##########################################"
echo "###        NMT                         ###"
echo "##########################################"
cd NMT
./prepare_dataset.sh # Hours to download # TODO Store it somewhere else
cd ..

echo "##########################################"
echo "###        DSSD                        ###"
echo "##########################################"
cd DSSD
./prepare_dataset.sh # VOC0712 dataset, heavy but quick to download
cd ..

echo "##########################################"
echo "###        Faster_RCNN                 ###"
echo "##########################################"
cd Faster_RCNN
./prepare_dataset.sh # VOC2007 dataset
cd ..

echo "##########################################"
echo "###        WideDeep                    ###"
echo "##########################################"
cd WideDeep
./prepare_dataset.sh
cd ..

echo "##########################################"
echo "###        CRNN                        ###"
echo "##########################################"
cd CRNN
./prepare_dataset.sh
cd ..
