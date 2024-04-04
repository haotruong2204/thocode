set :stage, :production
set :rails_env, :production
set :rack_env, :production
set :branch, 'main'
set :deploy_to, '/var/www/thocode'

server "52.221.3.10", user: "ubuntu", roles: %w(web app db)
