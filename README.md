# URI::SshGit

[![Gem version][gem-image]][gem-url] [![Travis-CI Status][travis-image]][travis-url] [![yard docs][docs-image]][docs-url]

> Parse and build git repository url via ssh protocol.

See: [Popular use case packsaddle/ruby-git_clone_url](https://github.com/packsaddle/ruby-git_clone_url)


```ruby
require 'uri/ssh_git'

url = URI::SshGit.parse('git@github.com:packsaddle/ruby-uri-ssh_git.git')
# => #<URI::SshGit::Generic git@github.com:packsaddle/ruby-uri-ssh_git.git>

# http://docs.ruby-lang.org/ja/2.2.0/class/URI=3a=3aGeneric.html
# :scheme ,:userinfo, :host, :port, :registry, :path, :opaque, :query, :fragment
url.scheme #=> nil
url.userinfo #=> 'git'
url.user #=> 'git'
url.password #=> nil
url.host #=> 'github.com'
url.port #=> nil
url.registry #=> nil
url.path #=> 'packsaddle/ruby-uri-ssh_git.git'
url.opaque #=> nil
url.query #=> nil
url.fragment #=> nil

URI::SshGit::Generic.build(
  userinfo: 'git',
  host: 'github.com',
  path: 'packsaddle/ruby-uri-ssh_git.git'
).to_s
#=> 'git@github.com:packsaddle/ruby-uri-ssh_git.git'
```

## VS.

```ruby
# URI
url = URI.parse('git@github.com:schacon/ticgit.git')
URI::InvalidURIError: bad URI(is not URI?): git@github.com:schacon/ticgit.git

# Addressable
url = Addressable::URI.parse('git@github.com:schacon/ticgit.git')
#=> #<Addressable::URI:0x3fedf48fb430 URI:git@github.com:schacon/ticgit.git>
url.path #=> "schacon/ticgit.git"
url.scheme #=> "git@github.com"

url.host #=> nil
url.userinfo #=> nil
url.user #=> nil
url.port #=> nil
```


## API

*[details][docs-url]*.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'uri-ssh_git'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install uri-ssh_git

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/packsaddle/ruby-uri-ssh_git/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request


[travis-url]: https://travis-ci.org/packsaddle/ruby-uri-ssh_git
[travis-image]: https://img.shields.io/travis/packsaddle/ruby-uri-ssh_git/master.svg?style=flat-square&label=build%20%28linux%29
[gem-url]: https://rubygems.org/gems/uri-ssh_git
[gem-image]: http://img.shields.io/gem/v/uri-ssh_git.svg?style=flat-square
[docs-url]: http://www.rubydoc.info/gems/uri-ssh_git
[docs-image]: https://img.shields.io/badge/yard-docs-blue.svg?style=flat-square
