# Demo Puppet implementation

This repo contains a demonstration of a simple IBM Integration Bus (IIB) installation and MQ installation and configuration.

## Requirements

This repo depends on `vagrant`. So check [vagrantup.com]

## Required software

The software must be placed in in the `software` directory. It must contain the next files:

### Puppet Enterprise
- puppet-enterprise-2017.2.1-el-7-x86_64.tar.gz (unzipped)

Puppet Enterprise is not required when you use Puppet masterless.

### IBM IIB
- 10.0.0-IIB-LINUXX64-FP0009.tar.gz

### IBM MQ
- WS_MQ_V8.0.0.4_LINUX_ON_X86_64_IM.tar.gz

## Starting the nodes masterless

The test node is available to test with Puppet masterless. To do so, add `ml-` for the name when using vagrant:

```
$ vagrant up ml-mqiib01
```

## Using Puppet server

The test node is also available to run with a puppet server. To do this, you'll first have to start the puppet master.

```
$ vagrant up pe-master
```

Then you can start the MQ IIB test node:

```
$ vagrant up pe-mqiib01
```

# Example run

Check here the example run:

[![asciicast](https://asciinema.org/a/125127.png)](https://asciinema.org/a/125127)
