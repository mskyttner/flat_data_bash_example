#!/bin/bash

set -x
set -e
set -u
set -o pipefail

# Install Miller
sudo apt-get install Miller -y

# retain only two columns of the input file
mlr --csv -I cut -f data,ricoverati_con_sintomi ./dpc-covid19-ita-regioni-latest.csv
