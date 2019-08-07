provider "github" {
  token        = "${chomp(file("github-oauth-token.txt"))}"
  organization = "web-platform-tests"
}

resource "github_membership" "admin" {
  for_each = toset(local.admins)
  username = each.value
  role     = "admin"
}
