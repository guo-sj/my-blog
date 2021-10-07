# Windows Dot Net Install

公司的网络对于Windows Update的相关管控比较严，所以遇到需要和Windows相关的下载和更新，往往体验极差。
今天运行一个软件需要*.Net Framework 3.5*，但是windows联网更新却一直失败，让我很沮丧。好不容易成功了，
现在记录一下步骤。

因为联网下载这条路已经被公司堵住，所以考虑离线安装。

## 软件准备
1 windows安装盘*en_windows_10_business_editions_version_2004_x64_dvd_d06ef8c5.iso*
2 下载[.NET Framework 3.5 Offine Installer](https://sourceforge.net/projects/netframework35offlineinstaller/)

## 操作步骤
1 右键点击windows安装盘 -> mount
2 打开*.NET Framework 3.5 Offine Installer*，选择已经装载的windows安装盘；点击*Install*，即可。
