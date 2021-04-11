# kubectl

## Usage

    创建命名空间
    $ kubectl create namespace svccomb-system

    应用yaml
    $ kubectl apply -f service-center.yaml

    查看命名空间里pod状态
    $ kubectl -n svccomb-system get pod

    查看命名空间里服务
    $ kubectl -n svccomb-system get service

    $ kubectl --namespace=<insert-namespace-name-here> run nginx --image=nginx
    $ kubectl --namespace=<insert-namespace-name-here> get pods

    $ kubectl config set-context $(kubectl config current-context --namespace=<insert-namespace-name-here>

    $ kubectl config view | grep namespace:


    $ kubectl api-resources --namespaced=true
    $ kubectl api-resources --namespaced=false


    $ kubectl get nodes

    $ kubectl get pods
    $ kubectl get pods -o wide

    $ kubectl get svc
  

    $ kubectl create -f ./run-my-nginx.yaml
    
    检查 Pod 的 IP 地址
    kubectl get pods -l run=my-nginx -o yaml | grep podIP

    kubectl expose deployment/my-nginx

    打印环境变量
    kubectl exec my-nginx-3800858182-jr4a2 -- printenv | grep SERVICE


    $ kubectl scale deployment my-nginx --replicas=0; kubectl scale deployment my-nginx --replicas=2;


    $ kubectl get pods -l run=my-nginx -o wide

    $ kubectl exec my-nginx-3800858182-e9ihh -- printenv | grep SERVICE

    dns
    $ kubectl get services kube-dns --namespace=kube-system

    kubectl delete deployments,svc my-nginx; kubectl create -f ./nginx-secure-app.yaml

    kubectl describe service my-nginx

    kubectl delete service/my-nginx


    kubectl exec my-nginx-756f645cd7-5972c -i --tty -- /bin/bash
   
    kubectl run curl --image=radial/busyboxplus:curl -i --tty

    # https://k8smeetup.github.io/docs/tasks/configure-pod-container/pull-image-private-registry/
    kubectl create secret docker-registry regsecret --docker-server=<your-registry-server> --docker-username=<your-name> --docker-password=<your-pword> --docker-email=<your-email>

    kubectl get secret regsecret --output=yaml
    k get configMap xxonfig -o=yaml
