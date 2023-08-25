# Terminate the "killmenow" process if it is running
exec { 'pkill':
  command  => 'pkill killmenow',
  provider => 'shell',
}

