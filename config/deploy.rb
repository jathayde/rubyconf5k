set :application,   "rubyconf5k"

set :scm, :git
set :repository,  "git@github.com:boboroshi/rubyconf5k.git"
set :repository_cache, "git_cache"
set :git_enable_submodules, 1
set :deploy_via, :copy
set :git_shallow_clone, 1

set :deploy_to,     "/var/www/rubycentral/rubyconf5k.com/"
set :user, "rubycentral"
set :use_sudo, false
set :keep_releases, 5

ssh_options[:keys] = ["~/.ssh/id_rsa"]

role :app, "rubyconf5k.com"
role :web, "rubyconf5k.com"
role :db,  "rubyconf5k.com", :primary => true

depend :remote, :gem, "rails", ">=2.3.4"

namespace :deploy do
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end

  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end
end

task :move_in_database_yml, :roles => :app do
  run "cp #{shared_path}/system/database.yml #{current_path}/config/database.yml"
end

after "deploy:symlink", "move_in_database_yml"
