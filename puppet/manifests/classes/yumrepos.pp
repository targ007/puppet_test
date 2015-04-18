# Jenkins-repo
yumrepo {'jenkinsrepo':
    descr => 'RedHat Linux RPM for Jenkins',
    baseurl => 'http://pkg.jenkins-ci.org/redhat',
    enabled => '1',
    gpgcheck => '1',
    protect => '0',
    gpgkey => 'http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key',
}
