# Install and config Ngnix
exec { 'update':
  command => '/usr/bin/env apt-get -y update',
}
-> exec {'instNginx':
  command => '/usr/bin/env apt-get -y install nginx',
}
-> exec {'crea1':
  command => '/usr/bin/env mkdir -p /data/web_static/releases/test/',
}
-> exec {'crea2':
  command => '/usr/bin/env mkdir -p /data/web_static/shared/',
}
