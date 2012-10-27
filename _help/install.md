# rwedding  http://wedding.andxyz.com

## Setup

http://coding.smashingmagazine.com/2011/06/28/setup-a-ubuntu-vps-for-hosting-ruby-on-rails-applications-2/

http://37signals.com/svn/posts/2998-setting-up-a-new-machine-for-ruby-development

http://refinerycms.com/guides/installation-prerequisites

http://refinerycms.com/guides/getting-started


## Ideas 

http://www.ewedding.com/packages.php
https://github.com/mocra/custom_google_forms
http://harvesthq.github.com/harvey/#demo

# Joyent Inc.
# Proxy with .htaccess
# Revision 1.1, 2007/08/30

# This file is intended to go into the document root of your domain
# (typically web/public of your virtual server)

#
# A. Prelude

# A.1 Turn rewriting engine on
RewriteEngine on

#
# B. Catch all requests that are NOT to be proxied

# B.1 Apache does a better job with static files, so let's not proxy these
RewriteCond %{REQUEST_FILENAME} -f [OR]
RewriteCond %{REQUEST_FILENAME} -d [OR]

# B.2 Do not proxy the 'blog' subdomain (uncomment to enable)
#     To define more, separate with a pipe character, e.g. 'blog|wiki'
# RewriteCond %{HTTP_HOST} ^(blog)\. [OR]

# B.3 Do not proxy the '/blog' path (uncomment to enable)
#     To define more, separate with a pipe character, e.g. 'blog|forum'
# RewriteCond %{REQUEST_URI} ^/(blog) [OR]

# B.8 Do not proxy the default DAV, FCGI, and SVN paths
#     To define more, separate with a pipe character (leave this condition the last one)
RewriteCond %{REQUEST_URI} ^/(dav|fcgi-bin|svn)

# B.9 Finally take all the exceptions above and make them just pass through (do not proxy)
RewriteRule ^(.+) - [PT,L]

#
# C. All other requests WILL be proxied

# C.1 Only the 'shop' subdomain should be proxied (uncomment to enable)
#     To define more, separate with a pipe character, e.g. 'shop|store'
# RewriteCond %{HTTP_HOST} ^(shop)\.

# C.9 Warp speed to the proxy!
RewriteRule ^.*?app2/(.*)$ http://127.0.0.1:8002/$1 [P,QSA,L]
RewriteRule ^(.*)$ http://127.0.0.1:8001/$1 [P,QSA,L]