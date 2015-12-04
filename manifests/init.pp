
class foreman_extras (
  Boolean $reports                    = $foreman_extras::params::reports,
  String $report_processor_dest_path  = $foreman_extras::params::report_processor_dest_path,
  String $foreman_url                 = $foreman_extras::params::foreman_url,
  String $ssl_ca                      = $foreman_extras::params::ssl_ca,
  String $ssl_cert                    = $foreman_extras::params::ssl_cert,
  String $ssl_key                     = $foreman_extras::params::ssl_key,
  String $puppetdir                   = $foreman_extras::params::puppetdir,
  String $puppetuser                  = $foreman_extras::params::puppetuser,
  Boolean $fact_uploader              = $foreman_extras::params::fact_uploader,
  String $fact_uploader_dest_path     = $foreman_extras::params::fact_uploader_dest_path,
  Boolean $fact_uploader_facts        = $foreman_extras::params::fact_uploader_facts,
  Integer $fact_uploader_timeout      = $foreman_extras::params::fact_uploader_timeout,
  Integer $fact_uploader_threads      = $foreman_extras::params::fact_uploader_threads,
  Boolean $fact_uploader_cron_job     = $foreman_extras::params::fact_uploader_cron_job,
  Integer $fact_uploader_cron_min     = $foreman_extras::params::fact_uploader_cron_min,
  String $fact_uploader_cron_user     = $foreman_extras::params::fact_uploader_cron_user,
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
