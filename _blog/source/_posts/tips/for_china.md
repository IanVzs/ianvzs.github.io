---
title: 各个软件换源
date: 2021-04-22 17:04:15
categories: [tip, 换源]
tags: 
---

![mu ou](http://img.hc360.com/broadcast/info/images/200909/200909101744424019.jpg "ma liang")

在国内用原源都会很慢, 所以总结一下各个软件(?吧)换源方法.
## Python
```bash
pip install --index https://pypi.mirrors.ustc.edu.cn/simple/ dlib(numpy等包名)
```

## Npm
不过好像换了会有问题.Npm各个包依赖混乱不堪,不忍直视.
```bash
npm install --registry=https://registry.npm.taobao.org
```

## Ubuntu
地址: `/etc/apt/sources.list`

注意`备份`, `sudo` 权限
### 文件内容如下, 原源部分没有粘贴完全
#### 20.04 Focal Fossa
```
# 国内源
# Ali
deb http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse

# QH
# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse

# See http://help.ubuntu.com/community/UpgradeNotes for how to upgrade to
# newer versions of the distribution.
deb http://archive.ubuntu.com/ubuntu/ focal main restricted
# deb-src http://archive.ubuntu.com/ubuntu/ focal main restricted

## Major bug fix updates produced after the final release of the
## distribution.
deb http://archive.ubuntu.com/ubuntu/ focal-updates main restricted
# deb-src http://archive.ubuntu.com/ubuntu/ focal-updates main restricted


# 原源(以下可保存也可不保存吧, 以上可选其一也可全部都放着, 目前没啥问题)
## N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu
## team. Also, please note that software in universe WILL NOT receive any
## review or updates from the Ubuntu security team.
```

## Pi
...

## Python
```bash
```

## Python
```bash
```