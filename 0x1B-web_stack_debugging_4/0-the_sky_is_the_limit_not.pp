# Increases the amount of traffic an Nginx server can handle.

# Increase the ULIMIT of the default file
exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => ['/usr/local/bin', '/bin'],
} ->

# Set Nginx worker_processes to the number of CPU cores
file { '/etc/nginx/nginx.conf':
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  content => "worker_processes auto;\n",
  notify  => Service['nginx'],
  require => Package['nginx'],
} ->

# Restart Nginx
exec { 'nginx-restart':
  command     => '/etc/init.d/nginx restart',
  refreshonly => true,
  subscribe   => Exec['fix--for-nginx'],
}

