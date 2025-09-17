#!/bin/bash

# receive my worker number
export WRK_NB=$1

# the "workitem", the payload to be executed by the subtask
export PAYLOAD=5

# execute a subtask
sleep $PAYLOAD
echo "hello i am subtask" $WRK_NB
#sleep $WRK_NB

