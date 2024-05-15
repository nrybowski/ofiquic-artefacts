# oFIQUIC Artefacts

This repository is the entry point for the artefacts of the paper "[oFIQUIC: Leveraging QUIC in OSPF for seamless
network topology changes](http://hdl.handle.net/2078.1/286860)" presented at IFIP Networking'24.

Code artefacts are encoded as git submodules towards the exact version of the code used for the paper.
Raw data are stored on the [UCLouvain dataverse](https://dataverse.uclouvain.be/dataverse/ingi) and should be downloaded separately.

The remaining of this document is divided in two parts: _(i)_ a description of the different parts of the [oFIQUIC prototype](#ofiquic-prototype) and _(ii)_ the [experimental part](#experiments) described in the paper.

## oFIQUIC prototype

The oFIQUIC prototype is composed of multiple sub-projects.

### Socket API

> TODO

### Ordering module

> TODO

### oFIQUIC implementation in BIRD

> TODO

## Experiments

This section of the artefacts describes the tools and raw data related to the experiments discussed in the paper.

### Experimental setup tools

We evaluate our oFIQUIC prototype on multiple network topologies.
Manually setting up various topologies and running experiments are tedious tasks.
To lower this overhead, we developed two different tools: _(i)_ [DUNE](#distributed-micro-network-emulation-dune-framework), a framework to orchestrate reproducible network emulation experiments and _(ii)_ [mpf](#minimal-performance-framework-mpf), a framework automating the execution of the experiments.

#### Distributed Micro Network Emulation (DUNE) framework

> TODO

Refer to [the related README](DUNE/README.md) for more details.

#### Minimal Performance Framework (mpf)

> TODO

Refer to [the related README](mpf/README.md) for more details.

### Experiments scripts

The [`experiments`](experiments) directory contains the various helper scripts required to configure the experimental setup, run the experiments, collect and parse the raw results, and generate the figures of the paper.

Refer to [the related README](experiments/README.md) for more details.

### Raw experiments data

Raw data of the different experiments described in the paper are available as [a zip archive on the UCLouvain dataverse](https://doi.org/10.14428/DVN/76LJ8Y).
This archive also contains the results of intermediate processing stages of the raw data as described in the [README of the experiment scripts](experiments/README.md).
