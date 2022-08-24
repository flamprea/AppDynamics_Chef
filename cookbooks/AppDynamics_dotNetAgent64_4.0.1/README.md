AppDynamics_dotNetAgent64_4.0.1 Cookbook
========================================
This cookbook installs / uninstalls the AppDynamics .NET Application Agent

Requirements
------------
#### packages
- `windows` - AppDynamics_dotNetAgent64_4.0.1 needs windows_package to successfully install

Attributes
----------
Currently these are the defined defaults

default['appdynamics']['tempdir'] = "C:\\Windows\\Temp"
default['appdynamics']['installdir'] = "C:\\AppDynamics"
default['appdynamics']['agent']['logdir'] = "C:\\AppDynamics\\DotNetAgent\\Logs"
default['appdynamics']['controller']['host'] = "172.16.10.81"
default['appdynamics']['controller']['port'] = "8090"
default['appdynamics']['application'] = "App123"
default['appdynamics']['tier'] = "Tier123"
default['appdynamics']['node'] = "Node123"

Usage
-----
#### AppDynamics_dotNetAgent64_4.0.1::install
#### AppDynamics_dotNetAgent64_4.0.1::uninstall

e.g.
Just include `AppDynamics_dotNetAgent64_4.0.1::install` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[AppDynamics_dotNetAgent64_4.0.1::install]"
  ]
}
```


License and Authors
-------------------
Authors: AppDynamics, Inc.
