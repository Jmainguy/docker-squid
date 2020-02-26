# Docker-squid on openshift

## HowTo
```/bin/bash
oc new-project blah
oc new-build https://github.com/Jmainguy/docker-squid
oc expose svc/docker-squid
```

```/bin/bash
#to see the route it created
oc get routes
```
