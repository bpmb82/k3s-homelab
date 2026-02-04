#!/bin/bash

for repo in $(helm repo list | awk '/https/{print $1}');
do
  helm repo remove $repo
done

rm -rf $(which helm)
/usr/local/bin/k3s-uninstall.sh
rm -rf /k3s
