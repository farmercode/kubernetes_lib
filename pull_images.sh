#/usr/bin/env bash

repo_namespace="registry.cn-shanghai.aliyuncs.com/kk8s_lib/"
echo $repo_namespace

file="images_map"

if [ -f "$file" ]
then
  echo "$file found."

  while IFS='=' read -r key value
  do
    #echo "${key}=${value}"
    proxy_repo=${repo_namespace}${value}
    echo "####":$proxy_repo
    
    docker pull ${proxy_repo}
    docker tag ${proxy_repo} ${key}
    docker rmi ${proxy_repo}
  done < "$file"

else
  echo "$file not found."
fi