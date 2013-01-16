#
# Cookbook Name:: manual
# library:: mount
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

require 'chef/resource/mount'
require 'chef/provider/mount'


class Chef
  class Resource
    class ManualMount < Chef::Resource::Mount

      def initialize(name, run_context=nil)
        super
        @resource_name = :manual_mount
        @provider = Chef::Provider::Mount::Manual
      end
    end
  end
end

class Chef
  class Provider
    class Mount
      class Manual < Chef::Provider::Mount

        def load_current_resource
          @current_resource = Chef::Resource::ManualMount.new(@new_resource.name)
          @current_resource.mount_point(@new_resource.mount_point)
          @current_resource.device(@new_resource.device)
        end

        def action_mount
          Chef::Log.warn("#{@new_resource} needs to be mounted")
        end

        def action_umount
          Chef::Log.warn("#{@new_resource} needs to be umounted")
        end

        def action_remount
          Chef::Log.warn("#{@new_resource} needs to be remounted")
        end

        def action_enable
          Chef::Log.warn("#{@new_resource} needs to be enabled")
        end

        def action_disable
          Chef::Log.warn("#{@new_resource} needs to be disabled")
        end
      end
    end
  end
end
