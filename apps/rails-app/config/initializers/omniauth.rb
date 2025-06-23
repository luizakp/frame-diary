Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production? # You should replace it with your provider

  provider :google_oauth2, Rails.application.credentials.google[:client_id], Rails.application.credentials.google[:client_secret]
  # provider :facebook, Rails.application.credentials.facebook[:app_id], Rails.application.credentials.facebook[:app_secret]
  # provider :telegram, Rails.application.credentials.telegram[:bot_nickname], Rails.application.credentials.telegram[:bot_secret]
  # provider :twitter, Rails.application.credentials.twitter[:api_key], Rails.application.credentials.twitter[:api_secret]
end
OmniAuth.config.allowed_request_methods = %i[get]
