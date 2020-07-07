set -xe
    sshpass -p 'gogo2019linux' rsync -arvz  --delete  -e 'ssh -oUserKnownHostsFile=/dev/null -oStrictHostKeyChecking=no -p 22' /root/simulation/ root@101.236.34.109:/root/simulation/
set +xe