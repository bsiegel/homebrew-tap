cask 'mitmproxy' do
  version '1.0.2'
  sha256 '5752b482f7dc574b3f1f96c4bac1508c05b80a751f7e65bdf4900a1b1d891977'

  # github.com/mitmproxy/mitmproxy was verified as official when first introduced to the cask
  url "https://github.com/mitmproxy/mitmproxy/releases/download/v#{version}/mitmproxy-#{version}-osx.tar.gz"
  appcast 'https://github.com/mitmproxy/mitmproxy/releases.atom',
          checkpoint: '828f72c285d93fa503b16bf0223e27cd5bb7ddbcfc87614956c6f9e693df119e'
  name 'mitmproxy'
  homepage 'https://mitmproxy.org/'
  license :mit

  binary "mitmproxy"
  binary "mitmdump"
  binary "mitmweb"
end
