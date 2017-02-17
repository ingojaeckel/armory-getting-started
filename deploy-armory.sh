#!/bin/sh

# Configuration
export AWS_REGION=customize
export S3_BUCKET=customize
export AWS_ACCESS_KEY=customize
export AWS_SECRET_KEY=customize

git clone https://github.com/ingojaeckel/armory.git
cd armory

# Customize configuration
cp -v ../my_configuration.go src/my_configuration.go

# Customize AWS settings
sed -ie "s#us-east-1#${AWS_REGION}#g"                  scripts/trigger_codedeploy.sh
sed -ie "s#insert_your_s3_bucket#${S3_BUCKET}#g"       scripts/trigger_codedeploy.sh
sed -ie "s#insert_your_access_key#${AWS_ACCESS_KEY}#g" scripts/trigger_codedeploy.sh
sed -ie "s#insert_your_secret_key#${AWS_SECRET_KEY}#g" scripts/trigger_codedeploy.sh

cd src/

../scripts/deps.sh
../scripts/build.sh
../scripts/package_for_codedeploy.sh
../scripts/trigger_codedeploy.sh

# Delete staging directory
cd ../../
rm -r armory
