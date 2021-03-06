#
# These vars are expected to be set in web-ui (specified via manifest.sh)
#

#
# Speciffic for AWS
#
export TF_VAR_aws_access_key_id="xxxxxxx"
export TF_VAR_aws_secret_access_key="xxxxxxxx"
export TF_VAR_aws_region="eu-central-1"
export TF_VAR_availability_zone="eu-central-1a"

export TF_VAR_master_instance_type="t2.medium"
export TF_VAR_node_instance_type="t2.medium"
export TF_VAR_edge_instance_type="t2.medium"

#
# General for Phenomenal deployment
#
export TF_VAR_cluster_prefix="vreaws"
export TF_VAR_node_count="2"
export TF_VAR_edge_count="1"

# Galaxy
export TF_VAR_galaxy_admin_email="yoourname@bla.bla.com"
export TF_VAR_galaxy_admin_password="password"

# Jupyter
export TF_VAR_jupyter_password="password"

# Ansible
export ANSIBLE_HOST_KEY_CHECKING=False

#
# General for TSI
#
#
# If you are doing a local testing replace the path with the absolute
# path to your local cloned cloud-deploy directory
#
export PORTAL_DEPLOYMENTS_ROOT="/home/..bla.../cloud-deploy/deployments"
export PORTAL_APP_REPO_FOLDER="/home/..bla.../cloud-deploy"
export PORTAL_DEPLOYMENT_REFERENCE="id-phnmnl-aws"

# local testing - make sure deployment-id directory exists
dir=$PORTAL_DEPLOYMENTS_ROOT'/'$PORTAL_DEPLOYMENT_REFERENCE
if [ ! -d $dir ]; then
  mkdir -p $dir
fi
