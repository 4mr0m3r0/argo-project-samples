#!/bin/bash
split -p "---" $1
for x in $(ls x*)
do
    name=$(yq eval '.metadata.name' $x)
    kind=$(yq eval '.kind' $x)
    mv $x $name-$kind.yaml
done