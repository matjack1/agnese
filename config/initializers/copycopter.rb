CopycopterClient.configure do |config|
  config.api_key = '31baa4dc2fc5b5c2097f40b8213174cbf23824717c2e35dc'
  config.host = 'copycoptermj.herokuapp.com'
  config.i18n_prefixes_to_exclude = %w(activemodel.errors activerecord.errors countries datetime errors number support devise active_admin formtastic ransack)
  config.ignore_i18n_defaults = true
end

