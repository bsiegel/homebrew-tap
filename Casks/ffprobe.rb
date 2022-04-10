cask "ffprobe" do
  version "5.0.1"
  sha256 "e6ea82cc35c5e7a4de45d63d9f73c9d300df2e86e2722d75d5b3d0a639cb3e84"

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
