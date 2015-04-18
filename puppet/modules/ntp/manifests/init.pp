class ntp::install {
    package { "ntp":
        ensure => latest,
    }
}

class ntp::service {
    service { "ntpd":
        enable => true,
        ensure => true,
        require => Class["ntp::install"],
    }
}

class ntp {
    include ntp::install, ntp::service
}
