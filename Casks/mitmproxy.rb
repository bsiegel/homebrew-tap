cask 'mitmproxy' do
  version '2.0.0'
  sha256 'cc64ac5f797ee001b54b4df4de1cc67c751ea94bb0878b2cc1fb254dc3a3daf4'

  # github.com/mitmproxy/mitmproxy was verified as official when first introduced to the cask
  url "https://github.com/mitmproxy/mitmproxy/releases/download/v#{version}/mitmproxy-#{version}-osx.tar.gz"
  appcast 'https://github.com/mitmproxy/mitmproxy/releases.atom',
          checkpoint: '0e98977e1d2e343c57111de6e76cb9ae29291b03ab2c0544c17ec923db1a914d'
  name 'mitmproxy'
  homepage 'https://mitmproxy.org/'

  license :mit

  binary 'mitmproxy'
  binary 'mitmdump'
  binary 'mitmweb'
end
