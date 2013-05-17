
## Todo

1) fix the init.d
```bash
vi /etc/init.d/unicorn-wedding
```
```bash
export USER=wedding
export PATH=/home/$USER/.rbenv/bin:/home/$USER/.rbenv/shims:$PATH
export DAEMON=unicorn
export DAEMON_OPTS="-c /home/$USER/website/current/config/unicorn.rb -E production -D"
export NAME=unicorn
export DESC="Unicorn app for $USER"
export PID=/home/$USER/website/shared/pids/unicorn.pid
cd /home/$USER/website/current/
bundle exec $DAEMON $DAEMON_OPTS
```

2) dunno

## Random tips

### refinery
  
 - http://www.scribd.com/doc/40504843/Rails-Magazine-Issue-7-Field-Day

### flickr url magic

 - http://www.flickr.com/services/api/misc.urls.html
 - http://www.pixellatedvisions.com/2009/04/06/integrating-flickr-into-your-rails-website


### theme

 - https://github.com/radiant/radiant/wiki
 - view-source:http://twitter.github.com/bootstrap/examples/starter-template.html
 - http://twitter.github.com/bootstrap/examples/starter-template.html
 - http://designshack.net/tutorialexamples/bootstrap/index.html

### _menu.html.erb TB headaches in the menu 

 <% =begin %>
  <li class="active"><a href="#">Home</a></li>
  <li><a href="#about">About</a></li>
  <li><a href="#contact">Contact</a></li>
 <% =end %>

### Maybe we should uses these too

 - https://github.com/chriseppstein/compass/blob/stable/frameworks/compass/stylesheets/compass/_css3.scss
 - https://github.com/stouset/twitter_bootstrap_form_for

### run it on unicorn, nginx and capistrano for fun

 - http://sirupsen.com/setting-up-unicorn-with-nginx/ 
 - [kill -QUIT masterPID](http://unicorn.bogomips.org/SIGNALS.html)
 - subdomain static assets
