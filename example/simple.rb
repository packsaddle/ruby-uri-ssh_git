require '../lib/ssh_url'

url = SshUrl.parse('git@github.com:packsaddle/ruby-ssh_url.git')

# http://docs.ruby-lang.org/ja/2.2.0/class/URI=3a=3aGeneric.html
# :scheme ,:userinfo, :host, :port, :registry, :path, :opaque, :query, :fragment
url.scheme #=> nil
url.userinfo #=> 'git'
url.host #=> 'github.com'
url.port #=> nil
url.registry #=> nil
url.path #=> '/packsaddle/ruby-ssh_url.git'
url.opaque #=> nil
url.query #=> nil
url.fragment #=> nil

SshUrl.build(userinfo: 'git', host: 'github.com', path: '/packsaddle/ruby-ssh_url.git')
#=> 'git@github.com:packsaddle/ruby-ssh_url.git'
