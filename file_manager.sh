#! /bin/bash
set +e
a=$(ls -d */ | wc -l 2>/dev/null)
b=$(ls | wc -l)
c=$(expr $b - $a)
echo "Total dir : $a"
echo "Total files : $c"
