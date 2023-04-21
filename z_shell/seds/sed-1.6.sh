#!/bin/bash

source ../common_util.sh


cd ../../

sed -i "s@script-loading-logo-text-img@script-loading-logo-text-img-none@g" packages/datasheet/pages/_app.tsx

echo ".script-loading-logo-text-img-none {" >> packages/datasheet/src/index.less
echo "  display:none;" >> packages/datasheet/src/index.less
echo "}" >> packages/datasheet/src/index.less




