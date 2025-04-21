#!/usr/bin/env sh

# 当发生错误时中止脚本
set -e

# 打包构建
npm run build

# cd 到构建输出的目录下
cd dist

# 部署到自定义域域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 部署到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# 部署到 https://<USERNAME>.github.io/<REPO>
# master:gh-pages 将本地的 master 分支推送到远程的 gh-pages 分支，如果省略 :gh-pages，默认推送到同名远程分支（即 master→master）。
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages
git push -f git@github.com:tankaio/gh-pages.git master:gh-pages

# 回到原来的目录
cd -
