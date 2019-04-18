class myprofile::haproxy::prod {
  include ::haproxy
  haproxy::listen { 'lb-01':
    collect_exported => false,
    ipaddress        => $::ipaddress,
    ports            => '80',
  }
  haproxy::balancermember { 'node1':
    listening_service => 'lb-01',
    server_names      => 'node1',
    ipaddresses       => '223.23.2.22',
    ports             => '8080',
    options           => 'check',
  }
  haproxy::balancermember { 'node2':
    listening_service => 'lb-01',
    server_names      => 'node2',
    ipaddresses       => '223.23.2.23',
    ports             => '8080',
    options           => 'check',
  }
}
