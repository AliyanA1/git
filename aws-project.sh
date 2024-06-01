#!/bin/bash
############################################
#author: Aliyan
#date: jun-1-2024
#version:1.0
#This script will report about the aws resource usage
##############################################

#Aws Ec2 
#Aws s3
#Aws lambda
#Aws iam

set -x



#List Ec2 instances
echo "print Ec2 instances"
aws ec2 describe-instances
#| jq '.Reservations[].Instances[].InstanceId[]'

#list s3 buckets
echo "print s3 buckets"
aws s3 ls

#list lambda
echo "print list of lambda functions"
aws lambda list-functions

#list iam
echo "print list of iam users"
aws iam list-users
