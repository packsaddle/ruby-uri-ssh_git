require 'uri'

require 'uri/ssh_git/generic'
require 'uri/ssh_git/version'

module URI
  module SshGit
    def self.parse(uri_string)
      host_part, path_part = uri_string.split(':', 2)
      userinfo, host = host_part.split('@', 2)
      path_part = '/' + path_part unless path_part.start_with?('/')
      Generic.build(userinfo: userinfo, host: host, path: path_part)
    end
  end
end
