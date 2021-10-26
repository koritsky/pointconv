#!/bin/bash

python train_scannet_IoU.py --model pointconv_weight_density_n16 --log_dir pointconv_scannet_ --batch_size 8
