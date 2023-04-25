#!/bin/bash
source /home/tzhu38/miniconda3/etc/profile.d/conda.sh
conda activate endonerf
echo "================== Training nerf"

cd /home/tzhu38/EndoNeRF
pwd

#export CUDA_VISIBLE_DEVICES=0   # Specify GPU id
python ./run_endonerf.py --config ./configs/pulling_scene.txt
