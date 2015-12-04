class foreman_extras::params {
  $foreman_url                  = 'https://foreman'
  $config_path                  = '/etc/puppetlabs/puppet/foreman.yaml'
  $reports                      = true
  $report_processor_dest_path   = '/opt/puppetlabs/puppet/lib/ruby/vendor_ruby/puppet/reports/foreman.rb'
  $ssl_ca                       = '/etc/puppetlabs/puppet/ssl/certs/ca.pem'
  $ssl_cert                     = "/etc/puppetlabs/puppet/ssl/certs/${::fqdn}.pem"
  $ssl_key                      = "/etc/puppetlabs/puppet/ssl/private_keys/${::fqdn}.pem"
  $puppetdir                    = '/opt/puppetlabs/server/data/puppetserver/'
  $puppetuser                   = 'puppet'
  $fact_uploader                = true
  $fact_uploader_dest_path      = '/usr/local/bin/foreman_node_info.rb'
  $fact_uploader_facts          = true
  $fact_uploader_timeout        = 10
  $fact_uploader_threads        = 2
  $fact_uploader_cron_job       = true
  $fact_uploader_cron_min       = 5
  $fact_uploader_cron_user      = 'root'
}
