cask "ffprobe" do
  version "4.4.1"
  sha256 "c0b506884064dec8cde87d0f0c447a2294d615f518cbde337d3345e6058e0160"

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
