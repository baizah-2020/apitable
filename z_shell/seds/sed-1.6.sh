#!/bin/bash

source ../common_util.sh


cd ../../

sed -i "s@<img src={integrateCdnHost(getEnvVariables().LOGO_TEXT_LIGHT!)} className='script-loading-logo-text-img' alt='logo_text_dark' />@&nbsp;@g" packages/datasheet/pages/_app.tsx




