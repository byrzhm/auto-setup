# Linux Configurations

- Create `public` user (Optional)
    ```bash
    sudo useradd -m public
    sudo passwd public

    # In clients:
    #     ssh-copy-id -i ~/.ssh/id_rsa.pub public@hostname
    ```

- Performance Tools
    ```bash
    # gperftools

    # google-perftools

    # iperf

    # intel-oneapi
    ## https://www.intel.com/content/www/us/en/docs/oneapi/installation-guide-linux/2023-2/overview.html

    ```

> [!NOTE]
> ```bash
> echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
> ```

- FTP Service
    ```bash
    sudo apt install vsftpd
    sudo vim /etc/vsftpd.conf
    # Set `local_enable` to `YES`
    # Set `write_enable` to `YES`
    
    sudo useradd -m zhangsan  # Add user zhangsan
    sudo passwd zhangsan
    sudo echo zhangsan >> /etc/vsftpd.chroot_list
    sudo /etc/init.d/vsftpd restart
    ```