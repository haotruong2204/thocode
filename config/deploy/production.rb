set :stage, :production
set :rails_env, :production
set :rack_env, :production
set :branch, 'main'
set :deploy_to, '/var/www/thocode'

server "13.250.244.161", user: "ubuntu", roles: %w(web app db)
