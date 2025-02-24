#!/bin/bash -eux

cd "$(dirname "${BASH_SOURCE[0]}")"

/usr/local/share/dotnet/packs/Microsoft.NETCore.App.Runtime.AOT.osx-arm64.Cross.maccatalyst-arm64/9.0.0/Sdk/../tools/mono-aot-cross \
	--path=./linked \
	--aot=mtriple=arm64-apple-ios15.0-macabi,data-outfile=./monotouchtest.aotdata,static,asmonly,dedup-skip,direct-icalls,full,soft-debug,dwarfdebug,no-direct-calls,outfile=./monotouchtest.dll.s \
	--debug -O=gsharedvt \
	./linked/monotouchtest.dll
