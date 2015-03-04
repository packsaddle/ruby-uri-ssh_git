require_relative 'helper'

module URI
  module SshGit
    class TestGeneric < Test::Unit::TestCase
      sub_test_case 'Generic' do
        test '#to_s' do
          assert do
            Generic.build(
              userinfo: 'git',
              host: 'github.com',
              path: '/packsaddle/ruby-uri-ssh_git.git'
            ).to_s == 'git@github.com:packsaddle/ruby-uri-ssh_git.git'
          end
        end
      end
    end
  end
end
