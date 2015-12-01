require_relative 'helper'

module URI
  module SshGit
    class TestGit < Test::Unit::TestCase
      sub_test_case '.parse' do
        test 'myself' do
          params = {
            userinfo: 'git',
            host: 'github.com',
            path: 'packsaddle/ruby-uri-ssh_git.git'
          }
          uri = 'git@github.com:packsaddle/ruby-uri-ssh_git.git'
          assert do
            ::URI::SshGit.parse(uri) == Generic.build(params)
          end
        end
        test 'no user' do
          params = {
            userinfo: '',
            host: 'example.com',
            path: '/packsaddle/ruby-uri-ssh_git.git'
          }
          uri = 'example.com:/packsaddle/ruby-uri-ssh_git.git'
          assert do
            ::URI::SshGit.parse(uri) == Generic.build(params)
          end
        end
      end
    end
  end
end
