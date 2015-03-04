require 'uri'

require 'uri/ssh_git/generic'
require 'uri/ssh_git/version'

module URI
  module SshGit
    def self.parse(uri_string)
      Generic.build(scheme: nil)
    end
  end
end
