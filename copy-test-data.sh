#!/bin/bash

source .env

aws s3 sync s3://${AWS_SOURCE_BUCKET}/stac/example-data/ data-transfer/