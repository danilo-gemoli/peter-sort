#!/usr/bin/env sh
#set -o errexit
set -o nounset
set -o pipefail

# FROM SORT DOCUMENTATION
#*** WARNING ***
#The locale specified by the environment affects sort order.
#Set LC_ALL=C to get the traditional sort order that uses
#native byte values.

LC_ALL=C sort test/longFile.test &> real.out
./cmd/sort/sort test/longFile.test > test.out
./test/test.sh
