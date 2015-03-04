require_relative 'helper'

module URI
  module SshGit
    class TestGit < Test::Unit::TestCase
      test 'version' do
        assert do
          !::URI::SshGit::VERSION.nil?
        end
      end
    end
  end
end
