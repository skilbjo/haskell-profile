#!/usr/bin/env bash

cmd="time ./run_job"

$cmd 1e4
$cmd 1e5
$cmd 1e6
#$cmd 1e7

$cmd 1e6 +RTS -sstderr

$cmd 1e7 +RTS -p -K100M

$cmd 1e8 +RTS -hc -p -K100M

$cmd 1e8 +RTS -hy -p -K100M

hp2ps -e8in -c program.hp
