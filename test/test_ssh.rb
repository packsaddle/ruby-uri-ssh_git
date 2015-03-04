require_relative 'helper'

module SshUrl
  class TestUrl < Test::Unit::TestCase
    test 'version' do
      assert do
        !::SshUrl::VERSION.nil?
      end
    end
  end
end
