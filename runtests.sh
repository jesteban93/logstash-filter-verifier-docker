#!/bin/bash

if [[ "$1" == "all" ]]; then
for folder in $(ls /logstash/filters/)
do
echo "[+] Starting test for $folder"
/usr/bin/logstash-filter-verifier --sockets /logstash/filters/$folder/tests/*.json /logstash/filters/$folder/*.conf
done
else
test_name=$(ls /logstash/filters/$1*)
echo "[+] Starting tests for $test_name"
/usr/bin/logstash-filter-verifier --sockets /logstash/filters/$1*/tests/*.json /logstash/filters/$1*/*.conf
fi 