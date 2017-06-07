cask 'mitmproxy' do
  version '2.0.2'
  sha256 '3a2da116a28a1ea0218e4ddf156c9afbc0e1c44653d687a73b91e833e41e31ef'

  # github.com/mitmproxy/mitmproxy was verified as official when first introduced to the cask
  url "https://github.com/mitmproxy/mitmproxy/releases/download/v#{version}/mitmproxy-#{version}-osx.tar.gz"
  appcast 'https://github.com/mitmproxy/mitmproxy/releases.atom',
          checkpoint: '0299d21eb70748ecfd3836bec4e0909136f59f5587328b23c6130b046aa0999d'
  name 'mitmproxy'
  homepage 'https://mitmproxy.org/'

  license :mit

  binary 'mitmproxy'
  binary 'mitmdump'
  binary 'mitmweb'
end
