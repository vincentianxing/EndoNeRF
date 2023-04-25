#!/bin/bash
source /home/tzhu38/miniconda3/etc/profile.d/conda.sh
conda activate endonerf
echo "================== Training nerf"

cd /home/tzhu38/EndoNeRF
pwd

python run_endonerf.py --config configs/cutting_scene.txt --render_only

python eval_rgb.py --gt_dir /path/to/data/images --mask_dir /path/to/data/gt_masks --img_dir logs/example_traning/renderonly_path_fixidentity_100000/estim/
