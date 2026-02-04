#!/bin/bash

# Remove cilium
cilium uninstall
rm -rf $(which cilium)

# Remove helm repos
for repo in $(helm repo list | awk '/https/{print $1}');
do
  helm repo remove $repo
done

# Remove helm
for i in $(helm env | awk -F= '/\//{print $2}'); do rm -rf $i; done
rm -rf $(which helm)

# Remove k3s
k3s-uninstall.sh
rm -rf /k3s
