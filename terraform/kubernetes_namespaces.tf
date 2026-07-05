resource "kubernetes_namespace_v1" "cloudflare" {
  metadata {
    name = "cloudflare"
  }
}

resource "kubernetes_namespace_v1" "cockroachdb" {
  metadata {
    name = "cockroachdb"
  }
}

resource "kubernetes_namespace_v1" "headlamp" {
  metadata {
    name = "headlamp"
  }
}
