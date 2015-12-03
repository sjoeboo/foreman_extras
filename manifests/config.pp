class foreman_extras::config (
  $foreman_url            = $foreman_extras::foreman_url,
  $ssl_ca                 = $foreman_extras::ssl_ca,
  $ssl_cert               = $foreman_extras::ssl_cert,
  $ssl_key                = $foreman_extras::ssl_key,
  $fact_uploader_facts    = $foreman_extras::fact_uploader_facts,
  $fact_uploader_timeout  = $foreman_extras::fact_uploader_timeout,
  $fact_uploader_threads  = $foreman_extras::fact_uploader_threads,
  $puppetdir              = $foreman_extras::puppetdir,
  $puppetuser             = $foreman_extras::puppetuser,
  ){

  file { '/etc/puppetlabs/puppet/foreman.yaml':
    content => template('foreman_extras/foreman.yaml.erb'),
    owner   => puppet,
    group   => puppet,
    mode    => '0644',
  }
}
