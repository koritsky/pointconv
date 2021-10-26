#!/bin/bash

python evaluate_scannet.py --model pointconv_weight_density_n16 --batch_size 8 --model_path pointconv_scannet_%s --ply_path DataSet/ScanNetv2/scans
