locals {
  environments = {
    dev      = "development"
    test     = "test"
    acc      = "acceptance"
    prod     = "production"
  }

  environment = lookup(local.environments, lower(var.environment), lower(var.environment))
  stack       = lower(var.stack)

  tags = {
    Env         = local.environment
    Environment = local.environment
    Stack       = local.stack
  }
}