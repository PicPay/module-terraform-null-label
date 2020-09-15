module "label1" {
  source      = "../"
  application = "docker"
  environment = "lab"
  name        = "ec2_teste"
  squad       = "InfraCore"
  bu          = "picpay"
  costcenter  = "1462"
  tribe       = "Infra Cloud"
  terraform   = "true"

  tags = {
    "Public"    = "false"
    "TTL"       = "montly"
    "TTLAction" = "Terminated"
  }
}

output "label1" {
  value = {
    id          = module.label1.id
    name        = module.label1.name
    application = module.label1.application
    squad       = module.label1.squad
    environment = module.label1.environment
    bu          = module.label1.bu
    costcenter  = module.label1.costcenter
    tribe       = module.label1.tribe
  }
}

output "label1_tags" {
  value = module.label1.tags
}

output "label1_context" {
  value = module.label1.context
}

output "label1_normalized_context" {
  value = module.label1.normalized_context
}