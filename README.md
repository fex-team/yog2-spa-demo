## SPA-DEMO

DEMO用于展示 YOG2 的 Bigpipe + Quickling 能力

### Usage

#### 安装命令行工具

```bash
npm i -g yog2
```

#### 初始化基础环境

```bash
yog2 init project
cd yog
npm install
yog2 run
```

#### 部署 SPA DEMO

重新开启一个命令行工具，在任意目录 (可以不是刚才创建的project目录) 执行

```bash
git clone https://github.com/fex-team/yog2-spa-demo
cd https://github.com/fex-team/yog2-spa-demo
yog2 release debug -w
```

#### 访问

http://127.0.0.1:8085/spa