# Description

This cookbook contains resources and providers to allow documentation of manaul installation steps within a set of Chef recipes. It is specifically designed to allow Chef recipes to be used as configuration documentation even when some steps are not automated and cannot be implemented by Chef directly.

Each resource includes a provider that logs a message to the Chef log at runtime. Conditions can be used with the resources, allowing the resources to also be used to allow the lack of messages within the log to be used to audit the system configuration.

# Requirements

Tested against Chef 0.10.8 and higher

# Resources/Providers

The following LWRPs and standard resource/providers provided by this cookbook can be used with no dependencies.

## install
The `install` resource supports specifying a software package that must be installed, including relevant information on the version number, who should perform the installation, and notes about the installation activities.

## manual_mount
The `manual_mount` resource is an extension of the default Chef `mount` resource, it supports the same contract but only prints a log message about the need to execute the mount.

# Author

Author:: Jason A. Beranek (<jason.beranek@gmail.com>)

Copyright 2013, Jason A. Beranek

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
