# Ensure the "holberton" user has increased hard file limit.
file { '/etc/security/limits.conf':
  ensure  => present,
  content => template('path/to/limits.conf.erb'), # Create a template with the necessary content
}

# Example template content (limits.conf.erb):
# <%= @name %> hard nofile 50000

# Ensure the "holberton" user has increased soft file limit.
file_line { 'holberton-soft-file-limit':
  path  => '/etc/security/limits.conf',
  line  => 'holberton soft nofile 50000',
}

