# oFIQUIC Artefacts

This repository is the entry point for the artefacts of the paper "[oFIQUIC: Leveraging QUIC in OSPF for seamless
network topology changes](http://hdl.handle.net/2078.1/286860)" presented at IFIP Networking'24.

Code artefacts are encoded as git submodules towards the exact version of the code used for the paper.
Raw data are stored on the [UCLouvain dataverse](https://dataverse.uclouvain.be/dataverse/ingi) and should be downloaded separately.

## How to use this repository ?

First, clone it from GitHub:

```console
$ git clone https://github.com/nrybowski/ofiquic-artefacts
```

Then pull the submodules with: 

```console
$ git submodule update --init --recursive
```

The remaining of this document is divided in two parts: _(i)_ a description of the different parts of the [oFIQUIC prototype](#ofiquic-prototype) and _(ii)_ the [experimental part](#experiments) described in the paper.

## oFIQUIC prototype

The oFIQUIC prototype is composed of multiple sub-projects.

### Ordering module

This modules computes the ordered list of distant nodes to contact.

Please, refer to the related [README](ofiquic/README.md) for more details.

### oFIQUIC implementation in BIRD

> I would like to thank [Thomas Wirtgen](https://github.com/twirtgen) for making QUIC available in the BIRD protocol suite

This submodule contains the actual implementation of oFIQUIC in the BIRD implementation of OSPF.

We provide a container embedding the required libraries to build our oFIQUIC prototype.
First, build the container:

```console
$ docker build -t ofiquic-builder -f build.cf .
```

Then, use the container to build the prototype:

```console
$ docker run -v $(pwd):/build -w /build ofiquic-builder:latest bash build.sh
```

This will produce the [oFIQUIC binary at ofiquic-bird/bird](ofiquic/bird).

## Experiments

This section of the artefacts describes the tools and raw data related to the experiments discussed in the paper.

### Experimental setup tools

We evaluate our oFIQUIC prototype on multiple network topologies.
Manually setting up various topologies and running experiments are tedious tasks.
To lower this overhead, we developed two different tools: _(i)_ [DUNE](#distributed-micro-network-emulation-dune-framework), a framework to orchestrate reproducible network emulation experiments and _(ii)_ [mpf](#minimal-performance-framework-mpf), a framework automating the execution of the experiments.

#### Distributed Micro Network Emulation (DUNE) framework

This is a custom orchestration framework aimed at providing more reproducible emulation experiments.

Refer to [the related README](DUNE/README.md) for more details.

#### Minimal Performance Framework (mpf)

We use a slightly modified version of the original [mpf](https://github.com/mpiraux/mpf) tool.

Refer to [the related README](mpf/README.md) for more details.

### Experiments scripts

The [`experiments`](experiments) directory contains the various helper scripts required to configure the experimental setup, run the experiments, collect and parse the raw results, and generate the figures of the paper.

Refer to [the related README](experiments/README.md) for more details.

### Raw experiments data

Raw data of the different experiments described in the paper are available as [a zip archive on the UCLouvain dataverse](https://doi.org/10.14428/DVN/76LJ8Y).
This archive also contains the results of intermediate processing stages of the raw data as described in the [README of the experiment scripts](experiments/README.md).
