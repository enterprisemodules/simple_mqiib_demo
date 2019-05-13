# Demo Puppet implementation

This repo contains a demonstration of a simple IBM Integration Bus (IIB) installation and MQ installation and configuration, based on the [ibm_profile](https://forge.puppet.com/enterprisemodules/ibm_profile) module.

## Requirements

This repo depends on `vagrant`. So check [vagrantup.com]

## Required software

The software must be placed in in the `modules/software/files` directory. It must contain the next files:

### Puppet Enterprise
- puppet-enterprise-2019.1.0-el-7-x86_64 (unzipped tar.gz)

Puppet Enterprise is not required when you use Puppet masterless.

### IBM IIB
- 10.0.0-IIB-LINUXX64-FP0011.tar.gz

### IBM MQ
- IBM_MQ_9.1.0.0_LINUX_X86-64.tar.gz

## Starting the nodes masterless

The test node is available to test with Puppet masterless. To do so, add `ml-` for the name when using vagrant:

```
$ vagrant up ml-mqiib01
```

## Using Puppet server

The test node is also available to run with a puppet server. To do this, you'll first have to start the puppet master.

```
$ vagrant up pe-mqiibmaster
```

Then you can start the MQ IIB test node:

```
$ vagrant up pe-mqiib01
```

