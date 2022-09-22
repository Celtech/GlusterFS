# GlusterFS Docker Swarm

## Quick Start

This tutorial will assume we have 3 virtual machines running with at least 1GB of RAM(4GB+ preferred) 
and 1 CPU core(4+ preferred) each. We will also assume that we have already installed docker engine
and initialized our masters / joined our workers as a cluster. It should look something like this:

```shell
$ docker node ls
ID                            HOSTNAME     STATUS    AVAILABILITY   MANAGER STATUS   ENGINE VERSION
vqxoht87m61zm2pkd41d5qll4 *   gluster01    Ready     Active         Leader           20.10.18
c2ziject4cpo32doc2gxcra46     gluster02    Ready     Active                          20.10.18
aixzyaylgdmpr87huk778vf6l     gluster03    Ready     Active                          20.10.18
```

Furthermore, we will assume you have one domain name set up per node that match the hostname of
the node(more on this in the section below). For our example we will use:

- `gluster01.chgovr.me`
- `gluster02.chgovr.me`
- `gluster03.chgovr.me`

> 💡 **Important:** Your subdomain names **MUST** match the hostnames of your nodes. 

### Setting up our nodes

On each node we need to create a `/data` directory. Run the following command on each node:

```shell
mkdir /data
```

Next we need to set up our node hostnames which need to match the DNS names used for our domains. 
For example if you use `gluster01.chgovr.me`, `gluster02.chgovr.me`, `gluster03.chgovr.me` then 
your node hostnames should be `gluster01`, `gluster02`, `gluster03`. Run the following commands
on each node in your cluster:

```shell
hostname gluster01 # change this to match domains per node
sudo service docker restart
```

### Git clone this project

Now we need to git clone this project onto our leader node, to do this we can run the following:

```shell
git clone <repo>
```

### Deploying our stack

```shell
cd glusterfs-swarm/docker
docker stack deploy -c docker-compose.yml gluster
```

