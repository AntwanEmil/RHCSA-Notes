# Puppet
- `sudo yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm`
- `sudo yum -y install https://yum.puppet.com/puppet-release-el-7.noarch.rpm`
- `yum install puppet`
- puppet --version  (to check it is properly installed).

## hostname

- `facter | grep hostname`   (to get your hostname)

### Node Definition Example

node "server1.example.com" {

        file { '/etc/yum.repos.d/local.repo':
                ensure => "file",
                owner => "root",
                group => "wheel",
                mode => "644",
                content => "[localc7]
name=CentOS 7 Local
baseurl=http://192.168.56.220/centos7
gpgcheck=0
enabled=1
"}

}
____________________________________
