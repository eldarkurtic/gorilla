#!/bin/bash

export MODEL_NAME=${1}
export TEST_CATEGORY=${2}

bfcl evaluate --model $MODEL_NAME --test-category $TEST_CATEGORY
