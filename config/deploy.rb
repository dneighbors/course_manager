default_run_options[:pty] = true

set :repository,  "git@github.com:dneighbors/course_manager.git"
set :scm, "git"

set :application, "academy"
set :deploy_via, :remote_cache
server = 'academy.integrumdemo.com'

set :user, 'deploy'
set :password, 'd3pl0y'
set :use_sudo, false

role :web, server
role :app, server
role :db,  server, :primary => true

set :deploy_to, "/home/#{user}/apps/#{application}"

after "deploy:setup", "deploy:more_setup"
after "deploy:update_code", "deploy:symlink_config"
after "deploy", "deploy:cleanup"

deploy.task :more_setup, :roles => :app, :except => {:no_release => true, :no_symlink => true} do
end

deploy.task :symlink_config, :roles => :app, :except => {:no_release => true, :no_symlink => true} do
  run "ln -nsf #{shared_path}/config/database.yml #{current_release}/config"
#  run "cd #{current_release} && RAILS_ENV=production rake db:migrate"
end

deploy.task :restart do
  run "mkdir -p #{current_release}/tmp"
  run "touch #{current_release}/tmp/restart.txt"
end
