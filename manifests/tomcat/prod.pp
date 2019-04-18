define profile::tomcat::prod {
  include tomcat # Since using hieradata, cannot use class
  #class {'::tomcat' :
  #  java_opts_xms => '128m',
  #  java_opts_xmx => '256m',
  #}

  tomcat::deploy {'sysfoo':
    deploy_url     => 'https://9-180957468-gh.circle-artifacts.com/0/home/circleci/repo/target/sysfoo.war',
    checksum_value => '3b3ba1ee6a6a30960303054f9f9b9c42',
  }
}
