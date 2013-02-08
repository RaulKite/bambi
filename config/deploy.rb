set :rvm_ruby_string, ENV['GEM_HOME'].gsub(/.*\//,"") # Read from local system
require "rvm/capistrano"             

set :application, "bambi"
set :scm, :git
set :repository,  "https://github.com/RaulKite/bambi.git"

role :web, "155.54.205.222"                          # Your HTTP server, Apache/etc
role :app, "155.54.205.222"                          # This may be the same as your `Web` server
role :db,  "155.54.205.222", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"
#

set :user, "vagrant"
set :group, "vagrant"
set :deploy_to, "/home/www/bambi"
set :use_sudo, false

set :deploy_via, :copy
set :copy_strategy, :export
set :normalize_asset_timestamps, false


set :rvm_ruby_string, ENV['GEM_HOME'].gsub(/.*\//,"")
set :rvm_install_ruby_params, '--default' 

before 'deploy:setup', 'rvm:install_rvm'   # install RVM
before 'deploy:setup', 'rvm:install_ruby'  # install Ruby 

namespace :bundle do
  desc "run bundle install and ensure all gem requirements are met"
  task :install do
    run "cd #{release_path} && bundle install  --without=test"
  end
end
after "deploy:update_code", "bundle:install"

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  desc "Restart the application"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
  desc "Copy the database.yml file into the latest release"
  task :copy_in_database_yml do
    run "cp #{shared_path}/config/database.yml #{latest_release}/config/"
  end
  desc "Copy devise.rb into latest release"
  task :copy_in_devise_rb do
    run "cp #{shared_path}/config/initializers/devise.rb #{latest_release}/config/initializers/devise.rb"
  end
end
before "deploy:assets:precompile", "deploy:copy_in_database_yml"
before "deploy:assets:precompile", "deploy:copy_in_devise_rb"



# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
