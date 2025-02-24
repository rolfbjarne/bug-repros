#!/bin/bash -eux

set -o pipefail
IFS=$'\n\t'

/Users/rolf/work/dotnet/macios/main/macios/builds/downloads/dotnet-sdk-9.0.103-servicing.25065.25/packs/Microsoft.NETCore.App.Runtime.AOT.osx-arm64.Cross.maccatalyst-arm64/9.0.1/Sdk/../tools/mono-aot-cross \
	--path=./linked \
	--aot=mtriple=arm64-apple-ios15.0-macabi,data-outfile=./monotouchtest.aotdata,static,asmonly,dedup-skip,direct-icalls,full,soft-debug,dwarfdebug,no-direct-calls,outfile=./monotouchtest.dll.s \
	--debug -O=gsharedvt \
	./linked/monotouchtest.dll
