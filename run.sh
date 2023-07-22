#!/bin/bash

# 运行 mkdocs gh-deploy 命令
mkdocs gh-deploy

# 添加所有文件到暂存区
git add .

# 读取用户输入的提交信息
echo "请输入提交信息: "
read commit_message

# 提交更改
git commit -m "$commit_message"

# 推送更改到 main 分支
git push origin main
