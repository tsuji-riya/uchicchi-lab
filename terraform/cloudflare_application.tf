resource "cloudflare_zero_trust_access_application" "k3s_api" {
  domain               = "k3s-api.riya.work"
  type                 = "self_hosted"
  zone_id              = local.cloudflare_zone_id
  app_launcher_visible = false
  destinations = [{
    type = "public"
    uri  = "k3s-api.riya.work"
  }]
  policies = [{
    id         = cloudflare_zero_trust_access_policy.k3s_api.id
    precedence = 1
  }]
}

resource "cloudflare_zero_trust_access_application" "k3s_headlamp" {
  domain               = "k3s-headlamp.riya.work"
  type                 = "self_hosted"
  zone_id              = local.cloudflare_zone_id
  app_launcher_visible = false
  destinations = [{
    type = "public"
    uri  = "k3s-headlamp.riya.work"
  }]
  policies = [{
    id         = cloudflare_zero_trust_access_policy.k3s_headlamp.id
    precedence = 1
  }]
}