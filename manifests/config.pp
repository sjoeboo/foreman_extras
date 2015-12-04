class foreman_extras::config (
  String $foreman_url            = $foreman_extras::foreman_url,
  String $ssl_ca                 = $foreman_extras::ssl_ca,
  String $ssl_cert               = $foreman_extras::ssl_cert,
  String $ssl_key                = $foreman_extras::ssl_key,
  Boolean $fact_uploader_facts    = $foreman_extras::fact_uploader_facts,
  Integer $fact_uploader_timeout  = $foreman_extras::fact_uploader_timeout,
  Integer $fact_uploader_threads  = $foreman_extras::fact_uploader_threads,
  String $puppetdir              = $foreman_extras::puppetdir,
  String $puppetuser             = $foreman_extras::puppetuser,
  ){

  file { '/etc/puppetlabs/puppet/foreman.yaml':
    content => template('foreman_extras/foreman.yaml.erb'),
    owner   => puppet,
    group   => puppet,
    mode    => '0644',
  }
}
