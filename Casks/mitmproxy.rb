cask 'mitmproxy' do
  version '2.0.1'
  sha256 'e2515e8d72347d49a42476b5db51fbf9e576bbc76aa3fe5f735aa750bfa44500'

  # github.com/mitmproxy/mitmproxy was verified as official when first introduced to the cask
  url "https://github.com/mitmproxy/mitmproxy/releases/download/v#{version}/mitmproxy-#{version}-osx.tar.gz"
  appcast 'https://github.com/mitmproxy/mitmproxy/releases.atom',
          checkpoint: 'c724cbdb3aa8662453997227e2bd7bce51c2afa4e09cb3ff3183e122e5422dfe'
  name 'mitmproxy'
  homepage 'https://mitmproxy.org/'

  license :mit

  binary 'mitmproxy'
  binary 'mitmdump'
  binary 'mitmweb'
end
