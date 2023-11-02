require "sidekiq"
require "sidekiq-status"

Sidekiq.configure_server do |config|
  config.redis = { url: ENV.fetch("REDIS_URL", nil) }
  Sidekiq::Status.configure_server_middleware config, expiration: 30.minutes

  config.logger = ActiveSupport::Logger.new(Rails.root.join("log", "sidekiq.log"))
end

Sidekiq.configure_client do |config|
  config.redis = { url: ENV.fetch("REDIS_URL", nil) }

  Sidekiq::Status.configure_client_middleware config, expiration: 30.minutes
end
