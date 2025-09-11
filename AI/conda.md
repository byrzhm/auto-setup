# Conda

## Installing Miniconda

```sh
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh # or use mirrors
bash Miniconda3-latest-Linux-x86_64.sh # activate conda manually

cat >> ~/.bashrc <<EOF
export PATH="\$HOME/miniconda3/bin:\$PATH"
conda_shell_hook() {
    eval "$(conda shell.bash hook)"
}
EOF

exec $SHELL
```

## Mirrors

* [https://mirror.tuna.tsinghua.edu.cn/help/anaconda/](https://mirror.tuna.tsinghua.edu.cn/help/anaconda/)

## Basic conda usage [[Conda Cheat Sheet](https://docs.conda.io/projects/conda/en/4.6.0/_downloads/52a95608c49671267e40c689e0bc00ca/conda-cheatsheet.pdf)]

### Create an environment ([`conda create`](https://docs.conda.io/projects/conda/en/latest/commands/create.html))

```sh
conda create -n llama3
```

* `-n` specifies the name
* `python=3.11` specifies the python version

### Delete an environment ([`conda remove`](https://docs.conda.io/projects/conda/en/latest/commands/remove.html))

```sh
conda remove -n test-env --all
```

### Activate an environment

```sh
conda activate llama3
```

### Deactivate an environment

```sh
conda deactivate
```

### Install Python (Allow Downgrade)

```sh
conda install python=3.12
```

### Install pip

```sh
conda install pip
```
