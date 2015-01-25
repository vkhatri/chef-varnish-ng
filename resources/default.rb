#
# Cookbook Name:: varnish_ng
# Resource:: default
#
# Copyright 2014, Virender Khatri
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
#

actions :create, :delete

default_action :create

attribute :enable_varnishlog,   :kind_of => [TrueClass, FalseClass], :default => node['varnish']['instance']['enable_varnishlog']
attribute :enable_varnishncsa,  :kind_of => [TrueClass, FalseClass], :default => node['varnish']['instance']['enable_varnishncsa']
attribute :varnishncsa_format,  :kind_of => String, :default => node['varnish']['instance']['varnishncsa_log_format']
attribute :service_supports,    :kind_of => Hash, :default => node['varnish']['instance']['service_supports']
attribute :service_action,      :kind_of => Array, :default => node['varnish']['instance']['service_action']
attribute :notify_restart,      :kind_of => [TrueClass, FalseClass], :default => node['varnish']['instance']['notify_restart']

attribute :start,         :kind_of => [TrueClass, FalseClass], :default => true
attribute :storage_type,  :kind_of => String, :default => node['varnish']['instance']['storage_type']
attribute :storage_size,  :kind_of => String, :default => node['varnish']['instance']['storage_size']

attribute :listen_address,  :kind_of => [String, Integer], :default => nil
attribute :listen_port,     :kind_of => [String, Integer], :required => true, :default => nil
attribute :admin_listen_address, :kind_of => String, :default => '127.0.0.1'
attribute :admin_listen_port,   :kind_of => [String, Integer], :required => true, :default => nil
attribute :thread_pools,        :kind_of => [String, Integer], :default => node['varnish']['instance']['thread_pools']
attribute :thread_pool_delay, :kind_of => [String, Integer], :default => node['varnish']['instance']['thread_pool_delay']
attribute :min_threads, :kind_of => [String, Integer], :default => node['varnish']['instance']['min_threads']
attribute :max_threads, :kind_of => [String, Integer], :default => node['varnish']['instance']['max_threads']
attribute :thread_timeout,  :kind_of => [String, Integer], :default => node['varnish']['instance']['thread_timeout']
attribute :sess_workspace,  :kind_of => [String, Integer], :default => node['varnish']['instance']['sess_workspace']
attribute :nfiles,  :kind_of => [String, Integer], :default => node['varnish']['instance']['nfiles']
attribute :memlock, :kind_of => [String, Integer], :default => node['varnish']['instance']['memlock']
attribute :nprocs, :kind_of => [String, Integer], :default => node['varnish']['instance']['nprocs']
attribute :corefile, :kind_of => [String, Integer], :default => node['varnish']['instance']['corefile']
attribute :reload_vcl,  :kind_of => [String, Integer], :default => node['varnish']['instance']['reload_vcl']
attribute :ttl,     :kind_of => [String, Integer], :default => node['varnish']['instance']['ttl']
attribute :options, :kind_of => Hash, :default => node['varnish']['instance']['options']

attribute :vcl_conf_cookbook,   :kind_of => String, :default => node['varnish']['instance']['options']
# vcl config file from cookbook, if defines overrides :vcl_conf_template
attribute :vcl_conf_file,       :kind_of => String, :default => node['varnish']['instance']['vcl_conf_file']
attribute :vcl_conf_template,   :kind_of => String, :default => node['varnish']['instance']['vcl_conf_template']
attribute :vcl_conf_template_attrs,   :kind_of => Hash, :default => node['varnish']['instance']['vcl_conf_template_attrs']