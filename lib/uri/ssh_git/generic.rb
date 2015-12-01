module URI
  module SshGit
    # @see http://docs.ruby-lang.org/en/2.2.0/URI/Generic.html
    class Generic < ::URI::Generic
      # @example
      #   Generic.build(
      #     userinfo: 'git',
      #     host: 'github.com',
      #     path: 'packsaddle/ruby-uri-ssh_git.git'
      #   ).to_s
      #   #=> 'git@github.com:packsaddle/ruby-uri-ssh_git.git'
      #
      # @return [String] git repository url via ssh protocol
      def to_s
        str = ''
        str << "#{user}@" if user && !user.empty?
        str << "#{host}:#{path}"
      end
    end
  end
end
