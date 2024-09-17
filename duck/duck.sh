!#/bin/bash

echo url="https://www.duckdns.org/update?domains=${DOMAI}&token=${DUCKTOKEN}&ip=" | curl -k -o ~/duckdns/duck.log -K -
