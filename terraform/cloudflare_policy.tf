resource "cloudflare_zero_trust_access_policy" "k3s_api" {
  account_id = local.cloudflare_account_id
  name       = "k3s-api"
  decision   = "non_identity"
  include = [
    {
      service_token = {
        token_id = cloudflare_zero_trust_access_service_token.k3s-api.id
      }
    }
  ]
}

resource "cloudflare_zero_trust_access_policy" "k3s_headlamp" {
  account_id = local.cloudflare_account_id
  name       = "k3s-headlamp"
  decision   = "allow"
  include = [
    {
      email = {
        email = "tsuji.riya@gmail.com"
      }
    }
  ]
}
