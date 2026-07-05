data "cloudflare_zero_trust_tunnel_cloudflared_token" "k3s" {
  account_id = local.cloudflare_account_id
  tunnel_id  = cloudflare_zero_trust_tunnel_cloudflared.k3s.id
}
