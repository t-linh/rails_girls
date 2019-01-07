# config valid only for current version of Capistrano
lock "3.11.0"

set :application, "rails_girls"
set :repo_url, "git@github.com:duongpham910/rails_girls.git"
set :bundle_binstubs, nil

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
set :branch, "develop"
# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/var/www/#{fetch(:application)}"

# set :tmp_dir, '/tmp'
set :local_user, 'framgia'

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, trues

# Default value for :linked_files is []
set :linked_files, fetch(:linked_files, [])
  .push("config/database.yml", "config/secrets.yml")
# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, [])
  .push("log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system", "vendor/bundle")

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 5

after "deploy:publishing", "deploy:restart"

# Khởi động lại unicorn sau khi deploy
namespace :deploy do
  task :restart do
    invoke "unicorn:restart"
  end
end
