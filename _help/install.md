# rwedding  http://wedding.andxyz.com


## Setup

### server deploy setup
- Ruby on Rails server setup on Ubuntu 11.04 with Nginx, Unicorn, Rbenv
https://gist.github.com/1303554
### unicorn & cap setup
https://www.engineyard.com/blog/2010/everything-you-need-to-know-about-unicorn/
http://henriksjokvist.net/archive/2012/2/deploying-with-rbenv-and-capistrano/
http://ariejan.net/2011/09/14/lighting-fast-zero-downtime-deployments-with-git-capistrano-nginx-and-unicorn
http://github.com/blog/517-unicorn
http://github.com/blog/470-deployment-script-spring-cleaning

### how I deployed rwedding the first time
	$ bundle exec cap deploy:setup
	$ sudo chown -R wedding /home/wedding/website/
	$ sudo chgrp -R staff /home/wedding/website/
	$ bundle exec cap deploy
	$ scp /Users/andxyz/code/rails-rwedding/db/development.sqlite3 wedding@deploy.andxyz.com:/home/wedding/website/current/db/production.sqlite3

### help files
http://37signals.com/svn/posts/2998-setting-up-a-new-machine-for-ruby-development
http://refinerycms.com/guides/installation-prerequisites
http://refinerycms.com/guides/getting-started
http://toroid.org/ams/git-website-howto



## Mongrel hell on joyent
http://discuss.joyent.com/viewtopic.php?id=26633





## Ideas 
http://www.ewedding.com/packages.php
https://github.com/mocra/custom_google_forms
