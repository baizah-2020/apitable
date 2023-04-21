#!/bin/bash

source ../common_util.sh


cd ../../

sed -i "s@{renderLogoText()}@<span style={{fontSize: '30px',color: '#fff',marginLeft: '20px'}}>Smart OA</span>@g" packages/datasheet/src/pc/components/common/logo/logo.tsx



