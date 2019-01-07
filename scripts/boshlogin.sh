export BOSH_CLIENT_SECRET=JWpCF5_4yVepoHmCP8uRSxQ6i6IKUmTa
export BOSH_CLIENT=ops_manager
export BOSH_ENVIRONMENT=192.168.110.61
export BOSH_CA_CERT=/home/localadmin/root_ca_certificate
bosh login -e=$BOSH_ENVIRONMENT --ca-cert=$BOSH_CA_CERT
