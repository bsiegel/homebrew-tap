cask "ffplay" do
  version "5.0.1"
  sha256 "d172e6ad38eccb730d3a818698ff85a8bf3b13e2e3ff680af8fda898ff7b1fe0"

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
