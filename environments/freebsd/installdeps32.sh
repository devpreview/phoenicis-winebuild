#!/bin/bash
url32="http://pkg.freebsd.org/FreeBSD:$VERSION:i386/latest/All/"
installdeps32(){
	mkdir tmp/
	cd tmp/
	wget $url32$1
	tar -xf $1
	cp -r usr/local/lib/* /usr/cross-freebsd/i386-pc-freebsd$VERSION/lib
	cp -r usr/local/include/* /usr/cross-freebsd/i386-pc-freebsd$VERSION/include
	cd ../
	rm -rf tmp/
}
