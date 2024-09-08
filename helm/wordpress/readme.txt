Create or apply the following file if you dont already configure a dynamic storage in your cluster K8S
# kubectl apply -f my-sc-lpv.yaml

Add the repo of the wordpress
# helm repo add bitnami https://charts.bitnami.com/bitnami
# helm install my-wordpress bitnami/wordpress --values .\values.yaml