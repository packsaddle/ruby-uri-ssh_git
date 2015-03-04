module URI
  module SshGit
    class Generic < ::URI::Generic
      def to_s
        show_path = path.slice(1..-1) if path.start_with?('/')
        "#{user}@#{host}:#{show_path}"
      end
    end
  end
end
