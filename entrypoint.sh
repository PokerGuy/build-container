#!/bin/bash
echo $S3Bucket
aws s3 cp s3://$S3Bucket/pipeline.sh ./pipeline.sh
chmod +x pipeline.sh
./pipeline.sh
