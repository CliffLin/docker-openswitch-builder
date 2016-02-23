#!/bin/bash
echo $0
if [ $# -ne 2 ];then
  echo "docker run -tid -v$pwd/:/tmp/ops-builder/image/ ops-builder {OPS_VERSION} {PLATFORM}"
fi
echo 'OPS_VERSION: '$1 >> ansible/group_vars/openswitch
echo 'PLATFORM: '$2 >> ansible/group_vars/openswitch
cd ansible;ansible-playbook playbook.yml
