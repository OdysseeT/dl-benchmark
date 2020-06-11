#!/bin/bash

echo "##########################################"
echo "###        Download dataset            ###"
echo "##########################################"
cd dataset
./prepare_dataset.sh
cd ..

echo "##########################################"
echo "###        CNN_Tensorflow              ###"
echo "##########################################"
cd CNN_Tensorflow
./train-all.sh
cd ..

##############################################################

### Running SSD_ResNet34_PyTorch
### run failed due to missing libs on mlperf

##############################################################

echo "##########################################"
echo "###        Mask_RCNN                   ###"
echo "##########################################"
cd Mask_RCNN
./prepare_dataset.sh # Normally download COCO 2014 - but have changed to use 2017
./train.sh
cd ..

echo "##########################################"
echo "###        DeepInterest                ###"
echo "##########################################"
cd DeepInterest
./prepare_dataset.sh
./train.sh
cd ..

echo "##########################################"
echo "###        NMT                         ###"
echo "##########################################"
cd NMT
./prepare_dataset.sh # Hours to download # TODO Store it somewhere else
./train.sh
cd ..

echo "##########################################"
echo "###        DSSD                        ###"
echo "##########################################"
cd DSSD
./prepare_dataset.sh # VOC0712 dataset, heavy but quick to download
./train.sh
cd ..

echo "##########################################"
echo "###        NCF                         ###"
echo "##########################################"
cd NCF
./train.sh
cd ..


##############################################################

./process_results.sh

end=`date +%s%N`
end_date=`date`
total_time=`bc <<< "scale = 0; ($end-$start)/1000000000"`
total_hours=`bc <<< "scale = 0; ${total_time}/3600"`
total_minutes=`bc <<< "sale = 0; (${total_time}%3600)/60"`
total_seconds=`bc <<< "scale = 0; ${total_time}%60"`
echo "Running started at ${start_date}"
echo "          ended at ${end_date}"
echo "Total running time is ${total_hours}h ${total_minutes}m ${total_seconds}s"
