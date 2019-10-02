#!/bin/bash

# assuming that this macro is sitting at its original location, 
# its path can be used to set the unigen enviroment  

filnam=$BASH_SOURCE            # filename of this (sourced) macro 
absnam=`readlink -f $filnam`   # absolute filename 
pather=`dirname $absnam`       # path to the config directory
pather=`dirname $pather`       # path to the top unigen directory

export UNIGEN=$pather

export PATH=${UNIGEN}/lib':'${UNIGEN}/bin':'${PATH}
export LD_LIBRARY_PATH=${UNIGEN}/lib':'${LD_LIBRARY_PATH}

echo UNIGEN = $UNIGEN