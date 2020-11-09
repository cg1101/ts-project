#!/bin/bash

# echo '${BASH_SOURCE[@]}='${BASH_SOURCE[@]}
# echo '${#BASH_SOURCE[@]}='${#BASH_SOURCE[@]}
# echo '${BASH_SOURCE}='${BASH_SOURCE}
# echo '${0}='${0}

if [ ${#BASH_SOURCE[@]} -eq 1 ] && [ ${BASH_SOURCE[0]} = ${0} ]; then
  echo "Stop! Please try \`source ${0}\` instead."
  exit 1
fi

PROJECT_ROOT=$(cd `dirname $BASH_SOURCE[0]` && pwd)
export PROJECT_ROOT

# export CLIENT_ID='xxxx'
# export CLIENT_SECRET='xxxx'
# export REDIRECT_URI='http://localhost:8080/auth_response'
# export REGION='ap-southeast-2'
# export DOMAIN_PREFIX='xxxx'
# export S3_BUCKET='xxxx'
# export USER_POOL_ID='xxxx'
# export API_ROOT='xxxx'
#
# export TBL_TENANTS='tenants'

LOCAL_ENV=${PROJECT_ROOT}/.env

if [ -e ${LOCAL_ENV} -a -f ${LOCAL_ENV} ]; then
  source ${LOCAL_ENV}
fi
