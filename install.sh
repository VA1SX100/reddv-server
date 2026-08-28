#!/usr/bin/env bash
set -euo pipefail

VERSION="0.1.0-test39"
BASE_URL="https://github.com/VA1SX100/reddv-server/releases/download/${VERSION}"
BUNDLE="reddv-${VERSION}-deploy.tar.gz"
EXPECTED_SHA256="e0f176af68018e3e622b58e3f9abcbf04ee11203b49f161e80ca599b612b6c87"
INSTALL_DIR="/opt/reddv"

if [[ "$(id -u)" -ne 0 ]]; then
  echo "请使用 root 运行，或执行：curl -fsSL https://github.com/VA1SX100/reddv-server/releases/latest/download/install.sh | sudo bash" >&2
  exit 1
fi
if [[ "$(uname -m)" != "x86_64" ]]; then
  echo "当前仅支持 x86_64，检测到：$(uname -m)" >&2
  exit 1
fi
if [[ ! -f /etc/os-release ]] || ! grep -qi '^ID=ubuntu' /etc/os-release; then
  echo "当前一键脚本仅验证 Ubuntu 22.04/24.04。" >&2
  exit 1
fi
if [[ -e "$INSTALL_DIR" ]]; then
  echo "$INSTALL_DIR 已存在。为保护现有配置，本脚本不会覆盖，请使用管理界面升级。" >&2
  exit 1
fi

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y ca-certificates curl tar openssl

TMP_DIR="$(mktemp -d /tmp/reddv-install.XXXXXX)"
trap 'rm -rf "$TMP_DIR"' EXIT
curl -fL --retry 3 --connect-timeout 15 -o "$TMP_DIR/$BUNDLE" "$BASE_URL/$BUNDLE"
ACTUAL_SHA256="$(sha256sum "$TMP_DIR/$BUNDLE" | awk '{print $1}')"
if [[ "$ACTUAL_SHA256" != "$EXPECTED_SHA256" ]]; then
  echo "部署包 SHA256 校验失败，停止安装。" >&2
  exit 1
fi

mkdir -p "$TMP_DIR/unpack"
tar -xzf "$TMP_DIR/$BUNDLE" -C "$TMP_DIR/unpack"
mv "$TMP_DIR/unpack/reddv-$VERSION" "$INSTALL_DIR"
cd "$INSTALL_DIR"
./scripts/install_docker.sh
./install.sh

WEB_PORT="$(sed -n 's/^WEB_PORT=//p' .env | head -n1)"
echo
echo "RedDV $VERSION 部署完成"
echo "管理地址：http://服务器IP:${WEB_PORT:-8080}"
echo "默认账号：admin / reddv1029"
