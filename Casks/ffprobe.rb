cask "ffprobe" do
  version "6.0"
  sha256 "aefcbe2c89f26d3ed6daaa2bb07c9a0e0b6c59b0967ecc4e1cb35a132d6b9926"

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
