resource "cloudflare_zero_trust_tunnel_cloudflared" "k3s_api" {
  account_id = local.cloudflare_account_id
  name = "k3s-api"
}

resource "cloudflare_zero_trust_tunnel_cloudflared_config" "k3s_api_config" {
  account_id = local.cloudflare_account_id
  tunnel_id = cloudflare_zero_trust_tunnel_cloudflared.k3s_api.id

  config = {
    ingress = [
      {
        hostname = "k3s-api.riya.work"
        service = "https://127.0.0.1:6443"
        original_request = {
          no_tls_verify = true
        }
      },
      {
        service = "http_status:404"
      }
    ]
  }
}