node 'node1.localdomain' {
 
    import 'classes/*.pp'
    addrepo{'our_EPEL':
        name => "EPEL",
        repourl => "https://dl.fedoraproject.org/pub/epel/6/x86_64/",
        descr => "EPEL repo for supervisor",
        key => '',
    }

    package{'supervisor':
        ensure => present,
        require => Addrepo['our_EPEL'],
    }

    service{'supervisord':
        enable => true,
        ensure => running,
        require => Package['supervisor'],
    }

    include jenkins
     
    file { '/tmp/world':
        content => "Hello, world and Targ !\n",
    }
}
