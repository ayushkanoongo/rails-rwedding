require "bundler/capistrano"
# bundle magic for rbenv to work see bin/bundle also
set :bundle_flags, "--deployment --quiet --binstubs --shebang ruby-local-exec"
set (:bundle_cmd) { "#{release_path}/bin/bundle" }
set :default_environment, {
  'PATH' => "$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH"
}

set :application, "wedding"
set :repository,  "ssh://deployer@deploy.andxyz.com/rwedding.git"
set :app_dir, "/home/wedding/website/"

# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :user, "wedding"
role :web, "deploy.andxyz.com"                          # Your HTTP server, Apache/etc
role :app, "deploy.andxyz.com"                          # This may be the same as your `Web` server
role :db,  "deploy.andxyz.com", :primary => true # This is where Rails migrations will run
#role :db,  "wedding.andxyz.com"



set :deploy_to, app_dir
#set :use_sudo, false
set :scm, :git
set :scm_verbose, true
set :deploy_via, :export
set :branch, 'master'
set :git_shallow_clone, 1

#set :deploy_via, :fast_remote_cache

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :deploy do

	before :"deploy:symlink", :"deploy:assets:precompile";
	
	namespace :assets do
        task :precompile, :roles => :web, :except => { :no_release => true } do
          from = source.next_revision(current_revision)
          if capture("cd #{latest_release} && #{source.local.log(from)} vendor/assets/ app/assets/ | wc -l").to_i > 0
            run %Q{cd #{latest_release} && #{rake} RAILS_ENV=#{rails_env} #{asset_env} assets:precompile}
          else
            logger.info "Skipping asset pre-compilation because there were no asset changes"
          end
      end
    end
	task :start do ; end
	task :stop do ; end
	task :restart do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
end