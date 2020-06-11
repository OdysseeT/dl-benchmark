#!/bin/bash

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
./train.sh
cd ..

echo "##########################################"
echo "###        DeepInterest                ###"
echo "##########################################"
cd DeepInterest
./train.sh
cd ..

echo "##########################################"
echo "###        NMT                         ###"
echo "##########################################"
cd NMT
./train.sh
cd ..

echo "##########################################"
echo "###        DSSD                        ###"
echo "##########################################"
cd DSSD
./train.sh
cd ..

echo "##########################################"
echo "###        NCF                         ###"
echo "##########################################"
cd NCF
./train.sh
cd ..

echo "##########################################"
echo "###         DIEN                       ###"
echo "##########################################"
cd DIEN
./train.sh
cd ..

echo "##########################################"
echo "###        Faster_RCNN                 ###"
echo "##########################################"
cd Faster_RCNN
./train.sh
cd ..

echo "##########################################"
echo "###        WideDeep                    ###"
echo "##########################################"
cd WideDeep
./train.sh
cd ..

echo "##########################################"
echo "###        CRNN                        ###"
echo "##########################################"
cd CRNN
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
