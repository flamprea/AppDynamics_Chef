#
# Cookbook Name:: AppDynamics_dotNetAgent64_4.0.1
# Recipe:: uninstall
#
# Copyright 2014, AppDynamics, Inc.
#
# All rights reserved - Do Not Redistribute
#
#Uninstall AppDynamics .Net Agent v.4.0.1
windows_package "dotNetAgentSetup64 4.0.1 Remove" do
	source "#{node['appdynamics']['tempdir']}/dotNetAgentSetup64.msi"
	action :remove
	installer_type :msi
	timeout 600
end

