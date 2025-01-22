#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $SCRIPT_DIR

FUNCTIONS_DIR="src/aws_lambda_mpic"

rm open-tofu/*.generated.tf

rm -r layer/create_layer_virtualenv
rm -r layer/python311_layer_content
rm -r layer/mpic_coordinator_layer_content

rm layer/*.zip

rm "${FUNCTIONS_DIR}"/mpic_coordinator_lambda/mpic_coordinator_lambda.zip
rm "${FUNCTIONS_DIR}"/mpic_caa_checker_lambda/mpic_caa_checker_lambda.zip
rm "${FUNCTIONS_DIR}"/mpic_dcv_checker_lambda/mpic_dcv_checker_lambda.zip
