require 'Twitter'

Twitter.configure do |config|
  config.consumer_key=Rails.application.config.twitterKeys[:consumer_key]
  config.consumer_secret=Rails.application.config.twitterKeys[:consumer_secret]
  config.oauth_token=Rails.application.config.twitterKeys[:oauth_token]
  config.oauth_token_secret=Rails.application.config.twitterKeys[:oauth_token_secret]
end