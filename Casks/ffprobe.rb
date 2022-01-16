cask "ffprobe" do
  version "5.0"
  sha256 "04c8d243a4dba1866e811169882152578febcf10af9566e020e3963cebbc66e2"

  url "https://evermeet.cx/ffmpeg/ffprobe-#{version}.zip"
  name "FFprobe"
  desc "Play, record, convert, and stream audio and video"
  homepage "https://evermeet.cx/ffmpeg/"

  livecheck do
    url "https://evermeet.cx/ffmpeg/info/ffprobe/release"
    regex(/\A{"name":"ffprobe","type":"release","version":"(\d+(?:\.\d+)*)"/)
  end

  conflicts_with formula: "ffmpeg"

  binary "ffprobe"
end
