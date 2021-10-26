# PointConv (refactoring)
## Introduction
This repository contatins a refactoring of the [original PointConv repository](https://github.com/DylanWusee/pointconv) of the paper [_PointConv: Deep Convolutional Networks on 3D Point Clouds_](https://arxiv.org/abs/1811.07246). Work on this project was done as part of the Skoltech course [Foundations of Software Engeneering](https://github.com/artonson/skoltech_fse_v2021.1). 


# Quickstart
This model uses SkаnNеt v2 dataset that is ~1.3TB. Quick start uses only one scene per train/val/test. To use more data see [Development](#Development) stage

1. Build docker image 
```
docker run --rm -it --name pointnet nahinkin/pointconv:cpu bash
```

2. Download data
```
chmod +x download_examples.sh
./download_examples.sh
```

3. Preprocess data

```
chmod +x preprocess_examples.sh
./preprocess_examples.sh
```
4. Train 
```
chmod +x train_examples.sh
./train_examples.sh
```

4. Train 
```
chmod +x eval_examples.sh
./eval_examples.sh
```

# Development

Step 1

```
One more piece of code
```

Step 2

...

Step N


