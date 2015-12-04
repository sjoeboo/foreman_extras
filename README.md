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

 ```foreman_url```
 The url (http or https) where foreman can be reached.
 Default: 'https://foreman'

 ```config_path```
 Path you'd like the config file for these scripts place. Directory must exist.
 Default:  '/etc/puppetlabs/puppet/foreman.yaml'

 ```reports```
 Boolean, disable,enable the report processor (Note, this does NOT add the processor to the 'report' setting in puppet.conf. That is out of the scope of this module)
 Default: true

 ```report_processor_dest_path```
 Path to install the report processor into. Varies with Puppetmaser/Puppetserver 1.0/Puppetserver 2.0
 Default: '/opt/puppetlabs/puppet/lib/ruby/vendor_ruby/puppet/reports/foreman.rb'

 ```ssl_ca```
 Path to CA used to verify foreman https IF using https
  Default: '/etc/puppetlabs/puppet/ssl/certs/ca.pem'

 ```ssl_cert```
  Path to cert used to verify foreman https IF using https
  Default: "/etc/puppetlabs/puppet/ssl/certs/${::fqdn}.pem"

 ```ssl_key```
  Path to key used to verify foreman https IF using https
  Default: "/etc/puppetlabs/puppet/ssl/private_keys/${::fqdn}.pem"

 ```puppetdir```
 Path to puppet data for the fact uploader to read.
  Default:  '/opt/puppetlabs/server/data/puppetserver/'

 ```puppetuser```
 Local Puppet used
 'puppet'

 ```fact_uploader```
 Enable/Disable fact uploader
 Default:  true

 ```fact_uploader_dest_path```
 Path to install fact uplaoding script to
 Default:   '/usr/local/bin/foreman_node_info.rb'

 ```fact_uploader_facts ```
 Turns on fact uplaods in the config file
 Default:  true

 ```fact_uploader_timeout ```
 Time out for attempting to upload facts, in seconds
 Default:  10

 ```fact_uploader_threads ```
 Now many threads to run when uploading facts.
 Default: 2

 ```fact_uploader_cron_job ```
 Boolean, toggles installation/removal of cronjob to upload facts
  Default: true

 ```fact_uploader_cron_min ```
 How frequently, in minutes, to run the cron job ('5' = */5, etc)
 Default:   '5'

 ```fact_uploader_cron_user ```
 User to install the cron job into
 Default:  'root'


## Limitations

Assuming *nix OS
