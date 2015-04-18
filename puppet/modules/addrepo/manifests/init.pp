define addrepo ($name, $repourl, $key, $descr){
    yumrepo{"${name}":
        baseurl => $repourl,
        descr => $descr,
        enabled => '1',
        gpgcheck => '0',
        gpgkey => $key,
    }
}
