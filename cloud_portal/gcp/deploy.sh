#!/usr/bin/env bash

set -e

# when testing you have to source: env_vars_expected_from_cloud_portal_xxx.sh

# provider speciffic
export KUBENOW_TERRAFORM_FOLDER=$PORTAL_APP_REPO_FOLDER'/KubeNow/gce'

$PORTAL_APP_REPO_FOLDER'/cloud_portal/shared/deploy.sh'
