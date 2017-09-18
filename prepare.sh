#!/bin/sh

cd $(dirname "$0")
cd build/install

if [ ! -f "ColdFusion_2016_WWEJ_linux64.bin" ]
then
	wget http://trials3.adobe.com/AdobeProducts/CSTD/11/linux64/ColdFusion_2016_WWEJ_linux64.bin
	
fi

chmod 755 ColdFusion_2016_WWEJ_linux64.bin
