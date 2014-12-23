#
# Cookbook Name:: AppDynamics_dotNetAgent64_4.0.1
# Recipe:: install
#
# Copyright 2014, AppDynamics, Inc.
#
# All rights reserved - Do Not Redistribute
#
#Install AppDynamics .Net Agent v.4.0.1
windows_package "dotNetAgentSetup64 4.0.1 Install" do
	source 'C:\Windows\Temp\dotNetAgentSetup64.msi'
	action :install
	installer_type :msi
	timeout 600
	options 'AD_SetupFile=C:\Windows\Temp\SetupConfig.xml INSTALLDIR=C:\AppDynamics'
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
