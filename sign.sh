#!/usr/bin/env bash

if [[ "$1" == *.msi ]]; then
	SIGNTYPE="msi"
else
	SIGNTYPE="pecoff"
fi

ossign.exe -t "$SIGNTYPE" -o "$1" "$1"
