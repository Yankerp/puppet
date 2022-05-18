class nginx{
  include nginx::install
}

class nginx{
  include nginx::config
}

class nginx{
  include nginx::service
}
