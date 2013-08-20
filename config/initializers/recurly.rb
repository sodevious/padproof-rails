if Rails.env.production? then
  Recurly.subdomain        = ENV['RECURLY_SUBDOMAIN']
  Recurly.api_key          = ENV['RECURLY_API_KEY']
  Recurly.js.private_key   = ENV['RECURLY_JS_PRIVATE_KEY']
else
  Recurly.subdomain      = "padproofuat"
  Recurly.api_key        = "4dca8d4b28cd401091c43835cf4e6fe5"
  Recurly.js.private_key = "222ce621e54c4e5aaa8366bb3a32e81d"
end

# Recurly.default_currency = 'USD'
