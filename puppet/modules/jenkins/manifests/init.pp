class jenkins {
    package {"jenkins":
        ensure => latest,
    }
   
    service {"jenkins":
        enable => true,
        ensure => running,
        hasrestart => true,
        require => Package["jenkins"],
    }
}
