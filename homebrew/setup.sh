#/bin/bash

mode=$1

if [ -z $mode ]; then
  echo -e "\033[0;33m[Warning]\033[0;39m Please input argument [install / upgrade]."
  exit 0  
fi


BREW_LIST=$(cat ./list.txt)i

# brew install all.
if [ $mode = "install" ]; then
    echo "Start brew install..."

    for formula in $BREW_LIST;
    do
         brew install $formula
    done
fi


# brew upgrade all.
if [ $mode = "upgrade" ]; then
    echo "Start brew upgrade..."

    for formula in $BREW_LIST;
    do
         brew upgrade  $formula
    done
fi

