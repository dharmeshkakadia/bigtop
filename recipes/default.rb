#
# Cookbook Name:: bigtop
# Recipe:: default
#

execute "apt-get update" do
  action :nothing
end

execute "wget -O http://www.apache.org/dist/bigtop/stable/repos/#{node[:lsb][:codename]}/bigtop.list.asc | sudo apt-key add -" do
  not_if "apt-key export 'bigtop apt repository'"
end

execute "wget -O /etc/apt/sources.list.d/bigtop.list http://www.apache.org/dist/bigtop/stable/repos/#{node[:lsb][:codename]}/bigtop.list"
