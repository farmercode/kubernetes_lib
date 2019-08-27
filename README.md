# kubernetes_lib

kubernetes version:`v1.15.0`
etcd container version: `3.3.10-1`

````
  - gcr.io/google_containers/etcd-amd64:{{ etcd_container_version }}
    - gcr.io/google_containers/kube-apiserver-amd64:v{{ kubernetes_version }}
    - gcr.io/google_containers/kube-controller-manager-amd64:v{{ kubernetes_version }}
    - gcr.io/google_containers/kube-proxy-amd64:v{{ kubernetes_version }}
    - gcr.io/google_containers/kube-scheduler-amd64:v{{ kubernetes_version }}
    - gcr.io/google_containers/kube-discovery-amd64:{{ kube_discovery_container_version }}
    - gcr.io/google_containers/pause-amd64:{{ pause_container_version }}
````