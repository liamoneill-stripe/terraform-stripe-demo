terraform {
  required_providers {
    stripe = {
      source = "lukasaron/stripe"
    }
  }
}

provider "stripe" {
  api_key = ""
}

resource "stripe_product" "monthly_guardian_print" {
  name = "Print - Monthly Subscription"
}

resource "stripe_price" "price" {
  // product needs to be defined
  product     = stripe_product.monthly_guardian_print.id
  currency    = "GBP"
  unit_amount = 1500
}
