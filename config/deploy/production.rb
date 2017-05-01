server '52.203.80.64', user: 'ubuntu', roles: [:app, :db]
set :rails_env, 'production'
set :rack_env, 'production'
set :puma_env, 'production'
set :branch, 'master'
set :nginx_server_name, 'members.fourathens.com'
set :log_level, :debug
set :ssh_options, {
  user: 'ubuntu', # overrides user setting above
  keys: %w(~/.ssh/fourathens.pem),
  forward_agent: true,
  auth_methods: %w(publickey)
}