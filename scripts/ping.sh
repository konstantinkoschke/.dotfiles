#!/usr/bin/env zsh

ping_result="$(ping -c1 -W 5 1.1.1.1 2>&1)"
if [[ ${ping_result} =~ "100% packet loss" ]] 
then
  echo "Timeout"
elif [[ ${ping_result} =~ "Network is unreachable" ]] 
then
  echo "No network"
else
  exact_number=$(ping -c3 -W 2 1.1.1.1 | sed -n -e 's@rtt min/avg/max/mdev = .*/\(.*\)/.*/.* ms@\1@p')
  printf "%5.1f ms\n" "${exact_number}"
fi
