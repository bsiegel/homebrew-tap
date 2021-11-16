cask "ffplay" do
  version "4.4.1"
  sha256 "4d170df1e87537dee96365f58b2b207cac5401ec0808b4808fac60e870999c9e"

  url "https://evermeet.cx/ffmpeg/ffplay-#{version}.zip"
  name "FFplay"
  desc "Play, record, convert, and stream audio and video"
  homepage "https://evermeet.cx/ffmpeg/"

  livecheck do
    url "https://evermeet.cx/ffmpeg/info/ffplay/release"
    regex(/\A{"name":"ffplay","type":"release","version":"(\d+(?:\.\d+)*)"/)
  end

  conflicts_with formula: "ffmpeg"

  binary "ffplay"
end
