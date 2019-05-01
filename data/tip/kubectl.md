# kubectl

## Usage

    $ kubectl --namespace=<insert-namespace-name-here> run nginx --image=nginx
    $ kubectl --namespace=<insert-namespace-name-here> get pods

    $ kubectl config set-context $(kubectl config current-context --namespace=<insert-namespace-name-here>

    $ kubectl config view | grep namespace:


    $ kubectl api-resources --namespaced=true
    $ kubectl api-resources --namespaced=false
  