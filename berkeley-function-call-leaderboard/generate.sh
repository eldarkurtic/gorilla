#!/bin/bash

export VLLM_ENDPOINT=localhost
export VLLM_PORT=${1}
echo "VLLM_PORT=$VLLM_PORT" >> .env

export MODEL_NAME=${2}
export TEST_CATEGORY=${3}

bfcl generate \
    --model $MODEL_NAME \
    --test-category $TEST_CATEGORY \
    --skip-server-setup \
    --include-input-log
