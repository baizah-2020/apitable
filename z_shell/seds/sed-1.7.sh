#!/bin/bash

source ../common_util.sh


cd ../../

# all
sed -i 's#开源社区版#Inner#g' backend-server/application/src/main/resources/sysconfig/strings.auto.json
sed -i 's#社区版#Inner#g' backend-server/application/src/main/resources/sysconfig/strings.auto.json
sed -i 's#Community#Inner#g' backend-server/application/src/main/resources/sysconfig/strings.auto.json
sed -i 's#開源社區版#Inner#g' backend-server/application/src/main/resources/sysconfig/strings.auto.json
sed -i 's#社區版#Inner#g' backend-server/application/src/main/resources/sysconfig/strings.auto.json
sed -i 's#APITable#Smart OA#g' backend-server/application/src/main/resources/sysconfig/strings.auto.json








