module URI
  module SshGit
    class Generic < ::URI::Generic
      def to_s
        'boo'
      end
    end
  end
end
