#!/bin/bash   

# This scirpt is to run post-labeling.
# It copies all of the labels from the 
# corresponding folders and prepares them 
# for labeled dataset preparation.

srcdir="."                                                                                                      
srcdir1="./Clevis"
srcdir2="./Dtube"
srcdir3="./Insulator"
srcdir4="./Joint"
srcdir5="./Pantograph"
srcdir6="./Arm"

cp $srcdir1/* $srcdir

for file in ${srcdir2}/* 
do
  name=$(basename $file)
  if [ -e ./$name ]; then
    cat $file >> ./$name
  else
    cp $file .
  fi
done

for file in ${srcdir3}/*
do
  name=$(basename $file)
  if [ -e ./$name ]; then
    cat $file >> ./$name
  else
    cp $file .
  fi
done

for file in ${srcdir4}/*
do
  name=$(basename $file)
  if [ -e ./$name ]; then
    cat $file >> ./$name
  else
    cp $file .
  fi
done

for file in ${srcdir5}/*
do
  name=$(basename $file)
  if [ -e ./$name ]; then
    cat $file >> ./$name
  else
    cp $file .
  fi
done

for file in ${srcdir6}/*
do
  name=$(basename $file)
  if [ -e ./$name ]; then
    cat $file >> ./$name
  else
    cp $file .
  fi
done

# Remove repeated lines
# after labelling
for file in ./*.txt
do
  name=$(basename $file)
  sort -u ./$name > tmp
  mv tmp ./$name
done

