echo "$DIGITALOCEAN_ACCESS_TOKEN"

doctl auth init -t "$DIGITALOCEAN_ACCESS_TOKEN"
doctl registry login
doctl kubernetes cluster kubeconfig save "$KUBERNETES_CLUSTER_ID"
