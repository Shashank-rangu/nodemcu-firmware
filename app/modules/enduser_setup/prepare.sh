#!/bin/sh

# Uses zopfli for better gzip compression
# sudo apt-get install zopfli
zopfli --gzip ./enduser_setup.html
xxd -i ./enduser_setup.html.gz | sed 's/unsigned char/static const char/; s/__enduser_setup_html_gz/enduser_setup_html_default/' > enduser_setup.html.gz.def.h

