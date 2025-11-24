#!/bin/bash

robot -d results/chrome  -v BROWSER:chrome  tests
robot -d results/firefox -v BROWSER:firefox tests
robot -d results/safari  -v BROWSER:safari  tests
