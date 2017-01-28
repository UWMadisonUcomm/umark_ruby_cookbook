name             'umark_ruby'
maintainer       'Nick Weaver'
maintainer_email 'jnweaver@wisc.edu'
license          'All rights reserved'
description      'Installs/Configures umark_ruby'
long_description 'Installs/Configures umark_ruby'
version          '0.2.0'

depends "selinux", "= 0.8.0"
depends "build-essential", "~> 7.0.3"
depends "ruby_build", "~> 1.0.0"
depends "ruby_rbenv", "~> 1.1.0"
depends "postgresql", "= 6.0.1"
depends "grunt_cookbook", "~> 1.0.0"
depends "git", "~> 5.0.2"
depends "database", "~> 6.1.1"
depends "nodejs", "~> 3.0.0"
depends "phantomjs", "~> 1.0.3"
depends "imagemagick", "~> 0.2.3"