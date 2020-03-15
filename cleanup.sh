#!/bin/bash

#Description : script to clean-up images

#Author : tothielover@yahoo.fr

#Date :03/15/2020


for i in $(docker images | awk '{print$3}' | grep -v IMAGE);
do
docker rmi -f ${i}
done

