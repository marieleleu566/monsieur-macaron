Recaptcha.configure do |config|
  config.site_key   = Rails.application.config_for(:recaptcha)[ENV["RECAPTCHA_SITE_KEY"]]
  config.secret_key = Rails.application.config_for(:recaptcha)ENV["RECAPTCHA_SECRET_KEY"]
end
