#!/bin/bash

for host in node00{5..8}; do
echo $host
ssh-copy-id -i ~/.ssh/id_rsa.pub pgrid@$host
done
