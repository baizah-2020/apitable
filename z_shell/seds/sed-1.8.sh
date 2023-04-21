#!/bin/bash

source ../common_util.sh


cd ../../

# all
sed -i 's#"system_configuration_product_name": "APITable",#"system_configuration_product_name": "Smart OA",#g' packages/i18n-lang/src/config/strings.json

sed -i 's#"system_configuration_product_name": "APITable",#"system_configuration_product_name": "Smart OA",#g' packages/datasheet/pages/_app.tsx


sed -i '388,392c <meta name="Email" content="help.darcy.zhang.2023@gmail.com" /> ' packages/datasheet/pages/_app.tsx














