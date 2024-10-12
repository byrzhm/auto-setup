# Conda

## Installing Miniconda

```sh
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh # or use mirrors
bash Miniconda3-latest-Linux-x86_64.sh
exec $SHELL
```

## Basic conda usage [[Conda Cheat Sheet](https://docs.conda.io/projects/conda/en/4.6.0/_downloads/52a95608c49671267e40c689e0bc00ca/conda-cheatsheet.pdf)]

### Create an environment.

```sh
conda create -n llama3
```

* `-n` specifies the name
* `python=3.11` specifies the python version


### Activate an environment.

```sh
conda activate llama3
```

### Deactivate an environment.

```sh
conda deactivate
```
