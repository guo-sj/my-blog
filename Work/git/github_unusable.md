# github_unusable

## ��������
linux�����ù�˾�������github�ϴ����ز��ȶ�, �����

## �������
�����ֻ��ȵ�

### �������

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
