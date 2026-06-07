# 部署说明

## 1. 放置前端文件

把 `index.html` 复制到你 Web 服务器的静态目录，例如：

- `/opt/download-center/caddy/site/aria-official/index.html`

## 2. 反代 `/jsonrpc`

参考 `caddy/Caddyfile.snippet`。

## 3. 配置 Aria2

确保开启 JSON-RPC：

```conf
enable-rpc=true
rpc-listen-all=true
rpc-listen-port=6800
rpc-secret=YOUR_SECRET
rpc-allow-origin-all=true
```

## 4. 前端中替换 Secret

编辑 `index.html`：

```js
const RPC_SECRET = 'YOUR_SECRET';
```

## 5. 分类目录

确保这些目录存在并可写：

```text
/downloads/movies
/downloads/tv
/downloads/music
/downloads/software
/downloads/books
/downloads/other
```

## 6. 可选：下载完成脚本兜底归类

你可以再配一个 `on-download-complete` 脚本做兜底自动归类。
