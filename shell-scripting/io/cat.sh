#! /bin/bash

# 1. Assign multi-line string to a shell variable
sql=$(
  cat <<EOF
SELECT foo, bar FROM db
WHERE foo='baz'
EOF
)

echo $sql

# 2. Pass multi-line string to a file in Bash
cat <<EOF > print.sh
#!/bin/bash
echo \$PWD
echo $PWD
EOF

# 3. Pass multi-line string to a pipe in Bash
cat <<EOF | grep 'b' | tee b.txt
foo
bar
baz
EOF

rm -f b.txt print.sh