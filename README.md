# Set Up Your PC Quickly

## Basic Setup

1. Set your hostname (Optional)
    ```bash
    # linux
    sudo hostnamectl set-hostname NEW_HOSTNAME
    ```
2. Change package source (Recommended)
    - [Ubuntu tuna mirror](https://mirror.tuna.tsinghua.edu.cn/help/ubuntu/)

3. Chinese Input (Optional)
    - [Ubuntu 中文输入法](https://blog.csdn.net/weixin_40247876/article/details/123476216)
4. Feishu (Optional)
    - [飞书](https://www.feishu.cn/download)
5. Build Essential (Recommended)
    ```bash
    # Debian / Ubuntu
    sudo apt update
    sudo apt install build-essential
    ```
6. NVIDIA GPU Driver (Necessary for Linux)
    - [https://documentation.ubuntu.com/server/how-to/graphics/install-nvidia-drivers/](https://documentation.ubuntu.com/server/how-to/graphics/install-nvidia-drivers/)
    - [https://docs.nvidia.com/deploy/cuda-compatibility/minor-version-compatibility.html](https://docs.nvidia.com/deploy/cuda-compatibility/minor-version-compatibility.html)
    ```bash
    # Ubuntu
    sudo ubuntu-drivers install nvidia:580 # proprietary
    ```
7. OpenSSH (Recommended)
    ```bash
    # Ubuntu / Debian
    sudo apt install openssh-server
    ```
    > Using `ssh-copy-id` in clients.


## References

* [Beautiful Bash](https://www.youtube.com/watch?v=b3W7Ky_aaaY)
* [Make TMUX Look Amazing in 3 Minutes! - complete tutorial](https://www.youtube.com/watch?v=H70lULWJeig)
* [Tmux From Scratch To BEAST MODE](https://www.youtube.com/watch?v=GH3kpsbbERo)

# FAQs

* [Neovim don't find a clipboard tool](https://forums.linuxmint.com/viewtopic.php?t=288294)
