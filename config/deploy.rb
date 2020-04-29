# config valid for current version and patch releases of Capistrano
# lock "~> 3.13.0"

#### Things to add?

# config/deploy.rb


# set :bundle_path,     nil
# set :bundle_binstubs, nil
# set :bundle_flags,    ''


set :application, "my_app_name"
set :repo_url, "git@github.com:ndwebgroup/ansible-test-app.git"
set :deploy_to, "/home/deploy/apps"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets"

# set :passenger_in_gemfile, true
# set :passenger_environment_variables, {}
set :pty, true
