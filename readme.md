## Botpress + Docker + K8s
Exemplo de aplicação botpress utilizando docker-compose para uso local e utilização no AKS

# Conexão com AKS 
1. Login com az cli
    ```
    az login
    ```
   
2. Conexão com o cluster AKS
    ```
    az aks get-credentials --resource-group $RESOURCE_GROUP --name $NAME
    ```

# Instalar Ingress Controller + Cert Manager
1. Ingress (nginx)
    ```
    kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.0.0/deploy/static/provider/cloud/deploy.yaml
    ```

2. Cert-manager
    ```
    kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.5.3/cert-manager.yaml
    ```