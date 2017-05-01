require 'capistrano/console'
require 'capistrano/setup'
require 'capistrano/deploy'
require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git
require 'capistrano/rbenv'
require 'capistrano/bundler'
require 'capistrano/puma'
require 'capistrano/puma/nginx'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'
require 'capistrano/rails/collection'
require 'capistrano/figaro_yml'
require 'capistrano/secrets_yml'
require 'capistrano/faster_assets'

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }