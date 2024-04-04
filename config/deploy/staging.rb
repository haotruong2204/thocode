set :stage, :staging
set :rails_env, :staging
set :rack_env, :staging
set :branch, 'main'
set :deploy_to, '/var/www/thocode'

server "52.221.3.10", user: "ubuntu", roles: %w(web app db)
