
class foreman_extras (
  $reports                      = $foreman_extras::params::reports,
  $report_processor_dest_path   = $foreman_extras::params::report_processor_dest_path,
  $foreman_url                  = $foreman_extras::params::foreman_url,
  $ssl_ca                       = $foreman_extras::params::ssl_ca,
  $ssl_cert                     = $foreman_extras::params::ssl_cert,
  $ssl_key                      = $foreman_extras::params::ssl_key,
  $puppetdir                    = $foreman_extras::params::puppetdir,
  $puppetuser                   = $foreman_extras::params::puppetuser,
  $fact_uploader                = $foreman_extras::params::fact_uploader,
  $fact_uploader_dest_path      = $foreman_extras::params::fact_uploader_dest_path,
  $fact_uploader_facts          = $foreman_extras::params::fact_uploader_facts,
  $fact_uploader_timeout        = $foreman_extras::params::fact_uploader_timeout,
  $fact_uploader_threads        = $foreman_extras::params::fact_uploader_threads,
  $fact_uploader_cron_job       = $foreman_extras::params::fact_uploader_cron_job,
  $fact_uploader_cron_min       = $foreman_extras::params::fact_uploader_cron_min,
  $fact_uploader_cron_user      = $foreman_extras::params::fact_uploader_cron_user,
  ) inherits foreman_extras::params {

    #Setup forman config file both report process and fact uploader source.
    include foreman_extras::config

    #report processor
    if $reports == true {
      include foreman_extras::reports
    }
    if $fact_uploader == true {
      include foreman_extras::facts
    }
  }
