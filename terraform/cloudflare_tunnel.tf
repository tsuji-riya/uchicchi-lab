resource "cloudflare_zero_trust_tunnel_cloudflared" "k3s" {
  account_id = local.cloudflare_account_id
  name       = "k3s"
}

resource "cloudflare_zero_trust_tunnel_cloudflared_config" "k3s" {
  account_id = local.cloudflare_account_id
  tunnel_id  = cloudflare_zero_trust_tunnel_cloudflared.k3s.id

  config = {
    ingress = [
      {
        hostname = "k3s-api.riya.work"
        service  = "https://kubernetes.default.svc:443"
        original_request = {
          no_tls_verify = true
        }
      },
      {
        hostname = "k3s-headlamp.riya.work"
        service  = "http://headlamp.headlamp:80"
      },
      {
        service = "http_status:404"
      }
    ]
  }
}
