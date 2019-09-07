#!/bin/bash

wget --spider -o tmp.log -e robots=off -r -nd -p $1
