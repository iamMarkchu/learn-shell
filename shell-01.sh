#! /bin/sh
cd ~/code/test/shell
mkdir shell_test
cd shell_test

for ((i=0; i<10; i++)); do
	touch test_$i.txt
done
