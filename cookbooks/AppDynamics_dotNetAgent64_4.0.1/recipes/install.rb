#
# Cookbook Name:: AppDynamics_dotNetAgent64_4.0.1
# Recipe:: install
#
# Copyright 2014, AppDynamics, Inc.
#
# All rights reserved - Do Not Redistribute
#
#Install AppDynamics .Net Agent v.4.0.1

remote_file "file:///#{node['appdynamics']['tempdir']}/dotNetAgentSetup64.msi" do
  source "https://download.appdynamics.com/onpremise/public/latest/dotNetAgentSetup.msi"
  not_if { ::File.exists?("#{node['appdynamics']['tempdir']}/dotNetAgentSetup64.msi") }
end

template "#{node['appdynamics']['tempdir']}/SetupConfig.xml" do
	source "SetupConfig.xml.erb"
end

windows_package "dotNetAgentSetup64 4.0.1 Install" do
	source "#{node['appdynamics']['tempdir']}/dotNetAgentSetup64.msi"
	action :install
	installer_type :msi
	timeout 600
	options "AD_SetupFile=#{node['appdynamics']['tempdir']}/SetupConfig.xml INSTALLDIR=#{node['appdynamics']['installdir']}"
end

service "AppDynamics.Agent.Coordinator_service" do
	action :stop
end

service "AppDynamics.Agent.Coordinator_service" do
	action :start
end

execute "iisreset" do
	command "iisreset"
end

file "#{node['appdynamics']['tempdir']}/SetupConfig.xml" do
  action :delete
end