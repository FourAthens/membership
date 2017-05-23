# config valid only for current version of Capistrano
lock '3.7.2'

set :application, 'membership'
set :repo_url, 'git@github.com:fourathens/membership.git'

set :keep_releases, 3
set :pty, false

# RBEnv
set :rbenv_ruby, '2.3.3'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}

set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml', 'config/application.yml')
set :linked_dirs, fetch(:linked_dirs, []).push('bin', 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads')

set :bundle_binstubs, -> { shared_path.join('bin') }
set :bundle_gemfile, -> { release_path.join('Gemfile') }

# Puma
set :puma_nginx, :app
set :puma_init_active_record, true
set :puma_bind, "unix:///var/www/membership/shared/tmp/sockets/puma.sock"
set :puma_env, fetch(:rack_env, fetch(:rails_env, 'production'))
set :nginx_use_ssl, true
set :nginx_config_name, 'star.fourathens.com'
append :rbenv_map_bins, 'puma', 'pumactl'

set :migration_role, 'app'            # Defaults to 'db'
set :conditionally_migrate, true      # Defaults to false. If true, it's skip migration if files in db/migrate not modified
set :assets_roles, :app

namespace :puma do
  desc 'Create Directories for Puma Pids and Socket'
  task :make_dirs do
    on roles(:app) do
      execute "mkdir #{shared_path}/tmp/sockets -p"
      execute "mkdir #{shared_path}/tmp/pids -p"
    end
  end

  before :start, :make_dirs
end

namespace :deploy do

  desc 'Initial Deploy'
  task :initial do
    on roles(:app) do
      before 'deploy:restart', 'puma:start'
      invoke 'deploy'
    end
  end

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      invoke 'puma:restart'
    end
  end

  after  :finishing,    :compile_assets
  after  :finishing,    :cleanup
  after  :finishing,    :restart

end