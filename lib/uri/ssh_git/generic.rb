module URI
  module SshGit
    # @see http://docs.ruby-lang.org/en/2.2.0/URI/Generic.html
    class Generic < ::URI::Generic
      # @example
      #   Generic.build(
      #     userinfo: 'git',
      #     host: 'github.com',
      #     path: '/packsaddle/ruby-uri-ssh_git.git'
      #   ).to_s
      #   #=> 'git@github.com:packsaddle/ruby-uri-ssh_git.git'
      #
      # @return [String] git repository url via ssh protocol
      def to_s
        show_path = path.slice(1..-1) if path.start_with?('/')
        result = ''.dup
        result << "#{user}@" if user && !user.empty?
        result << "#{host}:#{show_path}"
        result
      end
    end
  end
end
