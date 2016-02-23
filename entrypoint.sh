#!/bin/bash
echo $0
if [ $# -ne 2 ];then
  echo "docker run -tid -v$pwd/:/tmp/images/ ops-builder {OPS_VERSION} {PLATFORM}"
fi
echo 'OPS_VERSION: '$1 >> ansible/group_vars/openswitch
echo 'PLATFORM: '$2 >> ansible/group_vars/openswitch
cd ansible;ansible-playbook playbook.yml
cp -r /tmp/ops-builder/images /tmp/images
