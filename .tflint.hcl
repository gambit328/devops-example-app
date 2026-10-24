# Версии провайдеров не пиним: учебный пример берёт актуальные.
plugin "terraform" {
  enabled = true
  preset  = "recommended"
}

rule "terraform_required_providers" {
  enabled = false
}
