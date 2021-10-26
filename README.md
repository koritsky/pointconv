[![GitHub Super-Linter](https://github.com/koritsky/pointconv/workflows/Lint%20Code%20Base/badge.svg)](https://github.com/marketplace/actions/super-linter)
![Unit tests](https://github.com/koritsky/pointconv/actions/workflows/python_test.yml/badge.svg)

# PointConv (refactoring)
## Introduction
This repository contatins a refactoring of the [original PointConv repository](https://github.com/DylanWusee/pointconv) of the paper [_PointConv: Deep Convolutional Networks on 3D Point Clouds_](https://arxiv.org/abs/1811.07246). Work on this project was done as part of the Skoltech course [Foundations of Software Engeneering](https://github.com/artonson/skoltech_fse_v2021.1). 


# Quickstart
This model uses SkаnNеt v2 dataset that is ~1.3TB. Quick start uses only one scene per train/val/test. To use more data see [Development](#Development) stage

1. Build docker image

in project directory  
```
docker build -t nahinkin/pointconv:devel-gpu .
```

or pull from docker hub with name nahinkin/pointconv:devel-gpu

2. Run docker image

```
docker run -it --name pointnet nahinkin/pointconv:devel-gpu
```

3. Download data
```
chmod +x download_examples.sh
./download_examples.sh
```

4. Preprocess data

```
chmod +x preprocess_examples.sh
./preprocess_examples.sh
```
5. Train 
```
chmod +x train_examples.sh
./train_examples.sh
```

6. Evaluate 
```
chmod +x eval_examples.sh
./eval_examples.sh
```

# Development



