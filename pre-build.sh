#!/bin/sh

DIR=$PWD

# remove conflicting dependencies in OSMBonusPack
sed -i "/org.slf4j/d" sublibs/OSMBonusPack/OSMBonusPack/build.gradle

# PTE

cd sublibs/public-transport-enabler/enabler

# add non-upstream providers
git checkout -- src/de/schildbach/pte/NetworkId.java
sed -i "s#SYDNEY, MET#SYDNEY, HSL, NZ, SPAIN, BR, MET#" src/de/schildbach/pte/NetworkId.java

