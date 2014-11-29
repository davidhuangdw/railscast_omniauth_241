Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  # provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  provider :douban, "0549c71c2e64ecd20fdd55548b2ec676", "73b0076706feef65"
end