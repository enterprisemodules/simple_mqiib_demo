# Docs
class role::mqiib()
{
  contain ::profile::base
  contain ::ibm_profile::mq_machine
  contain ::ibm_profile::iib_machine

  Class['::profile::base']
  -> Class['::ibm_profile::mq_machine']
  Class['::profile::base']
  -> Class['::ibm_profile::iib_machine']
}
