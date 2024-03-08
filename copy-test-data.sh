#!/bin/bash

set -a
source .env
set +a

aws s3 sync s3://${AWS_SOURCE_BUCKET}/stac/example-data/ data-transfer/