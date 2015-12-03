class foreman_extras::facts (
    $config_path                = $foreman_extras::config_path,
    $fact_uploader_dest_path    = $foreman_extras::fact_uploader_dest_path,
    $fact_uploader_cron_job     = $foreman_extras::fact_uploader_cron_job,
    $fact_uploader_cron_min     = $foreman_extras::fact_uploader_cron_min,
    $fact_uploader_cron_user    = $foreman_extras::fact_uploader_cron_user
  ) {

    file {$fact_uploader_dest_path:
      content => template('foreman_extras/foreman_node_info.rb.erb'),
      owner   => puppet,
      group   => puppet,
      mode    => '0755',
    }
    if $fact_uploader_cron_job == true {
      $cron_present = 'present'
    } else {
      $cron_present = 'absent'
    }
    cron { 'upload_facts_to_foreman':
      ensure  => $cron_present,
      user    => $fact_uploader_cron_user,
      command => "${fact_uploader_dest_path} --push-facts",
      minute  => "*/${fact_uploader_cron_min}",
    }
}
