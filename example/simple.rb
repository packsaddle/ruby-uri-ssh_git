require '../lib/uri/ssh_git'

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

URI::SshGit.build(
  userinfo: 'git',
  host: 'github.com',
  path: 'packsaddle/ruby-uri-ssh_git.git'
).to_s
#=> 'git@github.com:packsaddle/ruby-uri-ssh_git.git'
