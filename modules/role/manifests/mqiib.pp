# Docs
class role::mqiib()
{
  contain ::profile::base
  contain ::mq_install::installmq
  contain ::profile::installiib
  contain ::profile::example_setup

  Class['::profile::base']
  -> Class['::mq_install::installmq']
  -> Class['::profile::installiib']
  -> Class['::profile::example_setup']
}
