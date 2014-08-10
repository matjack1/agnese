CopycopterClient.configure do |config|
  config.api_key = ENV['COPYCOPTER_API_KEY']
  config.host = ENV['COPYCOPTER_HOST']
  config.i18n_prefixes_to_exclude = %w(activemodel.errors activerecord.errors countries datetime errors number support devise active_admin formtastic ransack)
  config.ignore_i18n_defaults = true
end

