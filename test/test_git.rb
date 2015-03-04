require_relative 'helper'

module URI
  module SshGit
    class TestGit < Test::Unit::TestCase
      sub_test_case '.parse' do
        test 'myself' do
          assert do
            ::URI::SshGit.parse('git@github.com:packsaddle/ruby-uri-ssh_git.git') \
              == Generic.build(
                userinfo: 'git',
                host: 'github.com',
                path: '/packsaddle/ruby-uri-ssh_git.git'
              )
          end
        end
      end

      sub_test_case '.ssh_protocol?' do
        test 'ssh protocol' do
          assert do
            ::URI::SshGit.ssh_protocol?('git@github.com:packsaddle/ruby-uri-ssh_git.git')
          end
        end
        test 'git protocol' do
          assert do
            !::URI::SshGit.ssh_protocol?('git://github.com/packsaddle/ruby-uri-ssh_git.git')
          end
        end
      end
    end
  end
end
