# RedDV Server

RedDV 多模式数字服务器的公开部署仓库。运行镜像托管于 GitHub Container Registry，自动安装与升级文件托管于 GitHub Releases。

## 一键安装

适用于 x86_64 Ubuntu 22.04 / 24.04：

```bash
curl -fsSL https://github.com/VA1SX100/reddv-server/releases/latest/download/install.sh | sudo bash
```

安装完成后访问 `http://服务器IP:8080`。默认管理员账号为 `admin`，默认密码为 `reddv1029`，首次登录后请立即修改。

## 镜像

公开镜像前缀：`ghcr.io/va1sx100/reddv`。安装脚本会自动下载部署包并拉取所需镜像，无需登录 GHCR。
