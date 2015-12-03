# foreman_extras

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with foreman_extras](#setup)
    * [What foreman_extras affects](#what-foreman_extras-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with foreman_extras](#beginning-with-foreman_extras)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

This module sets up some etra foreman bits I've found lacking, esspecailly when
using foreman for reports/inventory, btu not for building/controlling puppet(master|servers).

Its setup for PuppetServer 2.x, but should work with 1.0 and the older PuppetMaster.

## Setup


### Beginning with foreman_extras

```include foreman_extras```

## Usage

This section is where you describe how to customize, configure, and do the
fancy stuff with your module here. It's especially helpful if you include usage
examples and code samples for doing things with your module.

## Reference

# Parameters
 As found in params.pp:

 ```foreman_url```  'https://foreman'
 ```config_path```  '/etc/puppetlabs/puppet/foreman.yaml'
 ```reports```  true
 ```report_processor_dest_path```  '/opt/puppetlabs/puppet/lib/ruby/vendor_ruby/puppet/reports/foreman.rb'
 ```ssl_ca``` '/etc/puppetlabs/puppet/ssl/certs/ca.pem'
 ```ssl_cert``` "/etc/puppetlabs/puppet/ssl/certs/${::fqdn}.pem"
 ```ssl_key```  "/etc/puppetlabs/puppet/ssl/private_keys/${::fqdn}.pem"
 ```puppetdir`` '/opt/puppetlabs/server/data/puppetserver/'
 ```puppetuser``` 'puppet'
 ```fact_uploader``` true
 ```fact_uploader_dest_path``` '/usr/local/bin/foreman_node_info.rb'
 ```fact_uploader_facts ``` true
  ```fact_uploader_timeout ``` 10
  ```fact_uploader_threads ``` 2
  ```fact_uploader_cron_job ``` true
  ```fact_uploader_cron_min ``` '5'
  ```fact_uploader_cron_user ``` 'root'

## Limitations

Assuming *nix OS
