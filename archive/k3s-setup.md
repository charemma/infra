## Setup cluster

install k3s on NAS, as master node

```bash
# Create a cluster
ssh nas
curl -sfL https://get.k3s.io | sh -
```

Store the token for the worker nodes

```bash
# Get the token
cat /var/lib/rancher/k3s/server/node-token
```

Setup worker node on rpi5

```bash
# Install k3s on worker node
ssh rpi5
curl -sfL https://get.k3s.io | K3S_TOKEN=$K3S_TOKEN K3S_URL=https://nas:6443 sh  -
```

Install k3s on north workstation

```bash
# Install k3s on north workstation
ssh north
curl -sfL https://get.k3s.io | K3S_TOKEN=$K3S_TOKEN K3S_URL=https://nas:6443 sh  -
```
