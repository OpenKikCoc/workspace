
### 红移 redshift

```sh
sudo apt-get install redshift redshift-gtk
```

如果出现 `Failed to run Redshift: Trying location provider 'geoclue2'...` 执行以下指令

```sh
sudo apt-get install geoclue-2.0
```

仍不能解决问题则：

>
> turn on Settings > Privacy > Location Services
>
> [Issue #445](https://github.com/jonls/redshift/issues/445)
>

### typora

```sh
# or run:
# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -

# add Typora's repository
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update

# install typora
sudo apt-get install typora
```

### OKular PDF阅读器

```sh
sudo apt-get install okular

# 中文
sudo apt-get install kde-l10n-zhcn
```

### dtalk

[nashaofu/dingtalk](https://github.com/nashaofu/dingtalk)
