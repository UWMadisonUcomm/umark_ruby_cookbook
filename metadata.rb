name             'umark_ruby'
maintainer       'Nick Weaver'
maintainer_email 'jnweaver@wisc.edu'
license          'All rights reserved'
description      'Installs/Configures umark_ruby'
long_description 'Installs/Configures umark_ruby'
version          '0.1.4'

depends "selinux", "= 0.8.0"
depends "build-essential", "~> 2.0.6"
depends "ruby_build", "~> 0.8.0"
depends "rbenv", "~> 0.7.3"
depends "postgresql", "= 3.4.10"
depends "grunt_cookbook", "~> 1.0.0"
depends "git", "~> 4.0.2"
depends "database", "~> 2.3.0"
depends "nodejs", "~> 2.1.0"
depends "phantomjs", "~> 1.0.3"
depends "imagemagick", "~> 0.2.3"
depends "redisio", "~> 2.2.4"