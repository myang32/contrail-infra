class opencontrail_ci::pulp_public_repo inherits opencontrail_ci::params {
  pulp_rpmrepo { 'opencontrail-thirdparty':
    ensure        => present,
    display_name  => 'opencontrail-thirdparty',
    description   => 'Third party packages required for OpenContrail build',
    relative_url  => 'opencontrail-thirdparty/x86_64',
    serve_http    => true,
    serve_https   => true,
    checksum_type => 'sha256',
    require       => [ Service['pulp_resource_manager', 'httpd'], Class['pulp::admin'] ],
  }
}