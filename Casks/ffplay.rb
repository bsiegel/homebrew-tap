cask "ffplay" do
  version "5.0"
  sha256 "a6b17e9f6d200528b0fb021d097fa49cdba051a75ca8b6b1eefe21a548297611"

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
