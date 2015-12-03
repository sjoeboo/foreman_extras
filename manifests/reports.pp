class foreman_extras::reports (
  $report_processor_dest_path = $foreman_extras::report_processor_dest_path,
  $config_path                = $foreman_extras::config_path,
  )
{
  file { $report_processor_dest_path:
    content => template('foreman_extras/foreman_report.rb.erb'),
    owner   => puppet,
    group   => puppet,
    mode    => '0644',
  }
}
