cask "ffplay" do
  version "4.4"
  sha256 "ccc90fcfd90d3be527f0a1a589b1802cfaebf7d112a407e2a6f14856b05d4878"

  url "https://evermeet.cx/ffmpeg/ffplay-#{version}.zip"
  name "FFplay"
  desc "Play, record, convert, and stream audio and video"
  homepage "https://evermeet.cx/ffmpeg/"

  conflicts_with formula: "ffmpeg"

  binary "ffplay"

  livecheck do
    url "https://evermeet.cx/ffmpeg/info/ffplay/release"
    regex(%r[\A{"name":"ffplay","type":"release","version":"(\d+(?:\.\d+)*)"])
  end
end
