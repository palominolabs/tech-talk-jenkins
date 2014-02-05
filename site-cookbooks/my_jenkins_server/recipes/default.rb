include_recipe 'apt'

package "git"
package "cowsay"

node.default['java']['jdk_version'] = '7'
include_recipe 'java'

node.default['jenkins']['server']['install_method'] = 'war'
node.default['jenkins']['server']['home'] = '/var/lib/jenkins'
node.default['jenkins']['server']['user'] = 'jenkins'
node.default['jenkins']['server']['group'] = 'jenkins'
node.default['jenkins']['http_proxy']['host_name'] = 'localhost'
include_recipe 'jenkins::server'
include_recipe 'jenkins::proxy'


jenkins_plugin "greenballs"
jenkins_plugin "job-dsl"
jenkins_plugin "git"
jenkins_plugin "copyartifact"


jenkins_cli "safe-restart"