require 'uri'

require 'uri/ssh_git/generic'
require 'uri/ssh_git/version'

module URI
  # Parse and build git repository url via ssh protocol.
  module SshGit
    # @example
    #   url = URI::SshGit.parse('git@github.com:packsaddle/ruby-uri-ssh_git.git')
    #   #=> #<URI::SshGit::Generic git@github.com:packsaddle/ruby-uri-ssh_git.git>
    #
    #   url.scheme #=> nil
    #   url.userinfo #=> 'git'
    #   url.user #=> 'git'
    #   url.password #=> nil
    #   url.host #=> 'github.com'
    #   url.port #=> nil
    #   url.registry #=> nil
    #   url.path #=> 'packsaddle/ruby-uri-ssh_git.git'
    #   url.opaque #=> nil
    #   url.query #=> nil
    #   url.fragment #=> nil
    #
    # @see http://docs.ruby-lang.org/en/2.2.0/URI/Generic.html
    #
    # @param url [String] git repository url via ssh protocol
    #
    # @return [Generic] parsed object
    def self.parse(uri_string)
      host_part, path_part = uri_string.split(':', 2)
      # There may be no user, so reverse the split to make sure host always
      # is !nil if host_part was !nil.
      host, userinfo = host_part.split('@', 2).reverse
      Generic.build(userinfo: userinfo, host: host, path: path_part)
    end
  end
end
