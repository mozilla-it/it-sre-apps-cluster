resource "aws_ecr_repository" "github-metrics-scraper" {
  name                 = "github-metrics-scraper"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "auth0-metrics-scraper" {
  name                 = "auth0-metrics-scraper"

  image_scanning_configuration {
    scan_on_push = true
  }
}

