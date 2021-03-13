Recaptcha.configure do |config|
  config.site_key   = Rails.application.config_for(:recaptcha)['6Lf_7n0aAAAAAJpX-9hJfd31MRvxhPsmp5c7ni_I']
  config.secret_key = Rails.application.config_for(:recaptcha)['6Lf_7n0aAAAAABGoYV0S7WNJtiXk2UztKqyVNWh5']
end
