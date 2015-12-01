require_relative 'helper'

module URI
  module SshGit
    class TestGeneric < Test::Unit::TestCase
      sub_test_case 'Generic' do
        test '#to_s' do
          params = {
            userinfo: 'git',
            host: 'github.com',
            path: '/packsaddle/ruby-uri-ssh_git.git'
          }
          uri = 'git@github.com:packsaddle/ruby-uri-ssh_git.git'
          assert do
            Generic.build(params).to_s == uri
          end
        end
      end
    end
  end
end
