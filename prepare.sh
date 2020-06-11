#!/bin/bash

echo "##########################################"
echo "###        Download dataset            ###"
echo "##########################################"
chmod +x ./prepare_COCO2017.sh
./prepare_COCO2017.sh
cd ..

echo "##########################################"
echo "###        Mask_RCNN                   ###"
echo "##########################################"
cd Mask_RCNN
chmod +x ./prepare_dataset.sh
./prepare_dataset.sh # Normally download COCO 2014 - but have changed to use 2017
cd ..

echo "##########################################"
echo "###        DeepInterest                ###"
echo "##########################################"
cd DeepInterest
chmod +x ./prepare_dataset.sh
./prepare_dataset.sh
cd ..

echo "##########################################"
echo "###        NMT                         ###"
echo "##########################################"
cd NMT
chmod +x ./prepare_dataset.sh
./prepare_dataset.sh # Hours to download # TODO Store it somewhere else
cd ..

echo "##########################################"
echo "###        DSSD                        ###"
echo "##########################################"
cd DSSD
chmod +x ./prepare_dataset.sh
./prepare_dataset.sh # VOC0712 dataset, heavy but quick to download
cd ..

echo "##########################################"
echo "###        Faster_RCNN                 ###"
echo "##########################################"
cd Faster_RCNN
chmod +x ./prepare_dataset.sh
./prepare_dataset.sh # VOC2007 dataset
cd ..

echo "##########################################"
echo "###        WideDeep                    ###"
echo "##########################################"
cd WideDeep
chmod +x ./prepare_dataset.sh
./prepare_dataset.sh
cd ..

echo "##########################################"
echo "###        CPN                         ###"
echo "##########################################"
cd CPN
chmod +x ./prepare_dataset.sh
./prepare_dataset.sh
cd ..

echo "##########################################"
echo "###        SegLink                     ###"
echo "##########################################"
cd SegLink
chmod +x ./prepare_dataset.sh
./prepare_dataset.sh
cd ..

echo "##########################################"
echo "###        CRNN                        ###"
echo "##########################################"
cd CRNN
chmod +x ./prepare_dataset.sh
./prepare_dataset.sh
cd ..
