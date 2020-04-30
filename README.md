# Abstract

This is a demo project to demonstrate how easy it is to deploy to Kubernetes
using Codefresh.

# How to use this repo

To test this repo, you should:

1. Clone the repository locally
2. Edit `codefresh.yml` and `deployment.yml` files. Change `$docker-image` with
the name of the docker image you would like to create.
3. Commit the changes and configure your repository in Codefresh UI
4. Setup the following env variables to specify the Kubernetes cluster we'll use
to deploy the project

```
KUBERNETES_USER
KUBERNETES_PASSWORD
KUBERNETES_SERVER (should include http/https prefix)
```

5. Run the build in Codefresh.io
6. Check that the deployment succeeded with kubectl:
```
kubectl get pods -l app=alpine-nginx
```

