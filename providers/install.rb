#
# Cookbook Name:: manual
# Provider:: install
#
# Copyright (C) 2013 Jason A. Beranek
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

action :log do
  message = "[ACTION] "
  message += new_resource.installed_by unless new_resource.installed_by.nil?
  message += " must manually install " + new_resource.name 
  message += " " + new_resource.version unless new_resource.version.nil?
  message += ": " + new_resource.notes unless new_resource.notes.nil?
  Chef::Log.warn(message)
end
