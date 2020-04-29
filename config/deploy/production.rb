server "ec2-3-225-20-143.compute-1.amazonaws.com", user: "deploy" , roles: %w(web app)

set :rails_env, "production"
set :user, "deploy"
set :use_sudo, false

set :rbenv_type, :user # or :system, depends on your rbenv setup
set :rbenv_ruby, '2.4.6'

set :bundle_flags, "--binstubs"

set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, %w(web app)

# default_run_options[:pty] = true
set :ssh_options, {
  :forward_agent => true,
  :auth_methods => ["publickey"]
}
