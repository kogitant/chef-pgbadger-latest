name             'chef-pgbadger-latest'
maintainer       "Antti Koivisto"
maintainer_email "chef@koant.com"
license          "Apache 2.0"
description      "Installs/Configures pgBadger"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"
recipe           "pgbadger", "Includes the recipe to download and install pgBadger"

%w{ debian ubuntu }.each do |os|
  supports os
end

attribute "pgbadger/dir",
  :display_name => "pgBadger directory",
  :description => "Path to pgBadger",
  :default => "/opt/pgbadger"

