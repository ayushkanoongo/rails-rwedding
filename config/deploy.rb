require "bundler/capistrano"
# bundle magic for rbenv to work see bin/bundle also
#set :bundle_flags, "--deployment --quiet --binstubs --shebang ruby-local-exec"
#gemfile.lock headaches http://stackoverflow.com/questions/3642085/make-bundler-use-different-gems-for-different-platforms
set :bundle_flags, "--quiet --binstubs --shebang ruby-local-exec"
set (:bundle_cmd) { "#{release_path}/bin/bundle" } # so that bundle works with rbenv
#set (:bundle_dir) { "#{release_path}/.bin" } # cause I thought I was being smart but I wasn't the default shared is fine
set :default_environment, {
  'PATH' => "$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH"
}
default_run_options[:pty] = true # had trouble inputting passwords

set :application, "wedding"
set :repository,  "ssh://deployer@deploy.andxyz.com/rwedding.git"
set :app_dir, "/home/wedding/website/"


set :user,  "wedding"
set :group, "staff"
role :web, "deploy.andxyz.com"                          # Your HTTP server, Apache/etc
role :app, "deploy.andxyz.com"                          # This may be the same as your `Web` server
role :db,  "deploy.andxyz.com", :primary => true # This is where Rails migrations will run
#role :db,  "wedding.andxyz.com"



set :deploy_to, app_dir
#set :use_sudo, false
set :scm, :git # Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :branch, 'master'
set :scm_verbose, true

#diff deploy strats
	#set :deploy_via, :remote_cache

	set :deploy_via, :export
	set :git_shallow_clone, 1

	#set :deploy_via, :fast_remote_cache


namespace :deploy do

	# before :"deploy:update", :"deploy:make_tmp_directories";

	# task :make_tmp_directories, :roles => [ :app, :db, :web ] do
	# 	run <<-CMD
	# 	chown -R wedding /home/wedding/website/
	# 	chgrp -R staff /home/wedding/website/
	# 	CMD
	# end

	before :"deploy:symlink", :"deploy:assets:precompile";

	namespace :assets do
        task :precompile, :roles => :web, :except => { :no_release => true } do
        	#run %Q{cd #{latest_release} && mkdir log && touch log/production.log}
            run %Q{cd #{latest_release} && bundle exec rake assets:precompile --silent}
      end
    end

	task :start do 
    run "service unicorn-wedding stop"; 
  end

	task :stop do 
    run "service unicorn-wedding stop"; 
  end

	task :restart, :roles => :app, :except => { :no_release => true } do 
		#run "#{try_sudo} service unicorn-wedding restart"
		run "service unicorn-wedding restart";
	end
  
# passenger restart
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
end