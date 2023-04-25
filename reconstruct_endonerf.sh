#!/bin/bash
source /home/tzhu38/miniconda3/etc/profile.d/conda.sh
conda activate endonerf
echo "================== Training nerf"

cd /home/tzhu38/EndoNeRF
pwd

python endo_pc_reconstruction.py --config_file configs/cutting_scene.txt --n_frames 120 --depth_smoother --depth_smoother_d 28

# visualizer
# python vis_pc.py --pc_dir logs/{expname}/reconstructed_pcds_{epoch}
