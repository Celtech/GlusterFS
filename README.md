# GlusterFS Docker Swarm

## Quick Start

This tutorial will assume we have 3 virtual machines running with at least 1GB of RAM(4GB+ preferred) 
and 1 CPU core(4+ preferred) each. We will also assume that we have already installed docker engine
and initialized our masters / joined our workers as a cluster. It should look something like this:

```shell
$ docker node ls
ID                            HOSTNAME     STATUS    AVAILABILITY   MANAGER STATUS   ENGINE VERSION
vqxoht87m61zm2pkd41d5qll4 *   gluster-01   Ready     Active         Leader           20.10.18
c2ziject4cpo32doc2gxcra46     gluster-02   Ready     Active                          20.10.18
aixzyaylgdmpr87huk778vf6l     gluster-03   Ready     Active                          20.10.18
```

### Setting up the host machines

On each node in our cluster we need to set up the following directories
