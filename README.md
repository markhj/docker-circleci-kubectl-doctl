# Docker image: CircleCI-ready with kubectl and doctl

This Docker image provides ``kubectl`` and ``doctl`` and a script to log in to your cluster.
It was designed for CircleCI, but fit other use-cases.

## Before booting the image
Before starting the container, you must configure two environment variables.

### DIGITALOCEAN_ACCESS_TOKEN

On digitalocean.com, on the left-hand menu, click on "API".

If you don't already have an access token you want to use for this operation, then create a new one.

Store the value safely!

### KUBERNETES_CLUSTER_ID

To find your Kubernetes cluster ID remain on digitalocean.com.

On left-hand menu navigate to "Kubernetes".

Open the cluster in question.

In one of the boxes shown you'll find "Cluster ID".

## After booting the image
When the environment variables are set, you can boot the image. Now simply call:

````bash
/bin/sh start.sh
````

You can now start playing around. For example run ````kubectl get pods````.

This is also the command to be added in your CI/CD pipeline job.

## Keeping container alive

If you want to play around with the build, you can keep the container alive by running:

````bash
docker run <tag> tail -f /dev/null
````
