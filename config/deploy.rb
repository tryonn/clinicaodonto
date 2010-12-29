set :application, "clinicaodontoweb"
#set :repository,  "set your repository location here"

set :path_to_apps, "/home/hamilton/desenvolvimento/workspace/ruby"
set :deploy_to, "rails_apps/clinicaodonto"

set :scm, :subversion
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "www.clinicaodontoweb.com.br"                          # Your HTTP server, Apache/etc
role :app, "www.clinicaodontoweb.com.br/app"                          # This may be the same as your `Web` server
role :db,  "www.clinicaodontoweb.com.br", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end