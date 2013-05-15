name              "bigtop"
description       "Installs bigtop repository"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.1"
depends           "cookbook-curl"

recipe "bigtop", "Installs bigtop repo"

%w{ debian ubuntu }.each do |os|
  supports os
end
