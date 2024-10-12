# Setup Environment for AI Development

## Conda

### Installing Miniconda

```sh
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh # or use mirrors
bash Miniconda3-latest-Linux-x86_64.sh
exec $SHELL
```

### Basic conda usage

Create an environment.

```sh
conda create -n llama3
```

Activate an environment.

```sh
conda activate llama3
```

Deactivate an environment.

```sh
conda deactivate
```
