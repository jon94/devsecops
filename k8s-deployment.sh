#!/bin/bash

#k8s-deployment.sh

sed -i "s#replace#siddharth67/numeric-app:17f0fe28ae753b839b1056f9d7a7b1def20383be#g" k8s_deployment_service.yaml
# kubectl -n default get deployment ${deploymentName} > /dev/null

# if [[ $? -ne 0 ]]; then
#     echo "deployment ${deploymentName} doesnt exist"
#     kubectl -n default apply -f k8s_deployment_service.yaml
# else
#     echo "deployment ${deploymentName} exist"
#     echo "image name - ${imageName}"
#     kubectl -n default set image deploy ${deploymentName} ${containerName}=${imageName} --record=true
# fi


kubectl -n default apply -f k8s_deployment_service.yaml