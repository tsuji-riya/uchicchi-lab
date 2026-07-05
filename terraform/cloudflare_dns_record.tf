resource "cloudflare_dns_record" "k3s_api" {
  zone_id = local.cloudflare_zone_id
  name    = "k3s-api.riya.work"
  content = "${cloudflare_zero_trust_tunnel_cloudflared.k3s.id}.cfargotunnel.com"
  type    = "CNAME"
  proxied = true
  ttl     = 1
}

resource "cloudflare_dns_record" "k3s_headlamp" {
  zone_id = local.cloudflare_zone_id
  name    = "k3s-headlamp.riya.work"
  content = "${cloudflare_zero_trust_tunnel_cloudflared.k3s.id}.cfargotunnel.com"
  type    = "CNAME"
  proxied = true
  ttl     = 1
}
