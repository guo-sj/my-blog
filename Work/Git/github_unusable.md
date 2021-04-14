# github_unusable

## 问题描述
linux机器用公司的网络从github上传下载不稳定, 体验差

## 解决方案
连接手机热点

### 具体操作

First, unset git proxy:
```sh
git config --global --unset http.proxy
git config --global --unset https.proxy
```

Then, comment proxy statements in **~/.bashrc**
```sh
# export http_proxy="http://10.167.196.133:8080"
# export https_proxy="http://10.167.196.133:8080"
```

Finaly, connect phone's hotspot and git!
