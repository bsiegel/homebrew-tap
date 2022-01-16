cask "ffmpeg" do
  version "5.0"
  sha256 "c713a4f0aaa20ad4e3e82cfa76ae6af333c13f90f96bc0db3fad635449f94304"

  url "https://evermeet.cx/ffmpeg/ffmpeg-#{version}.zip"
  name "FFmpeg"
  desc "Play, record, convert, and stream audio and video"
  homepage "https://evermeet.cx/ffmpeg/"

  livecheck do
    url "https://evermeet.cx/ffmpeg/info/ffmpeg/release"
    regex(/\A{"name":"ffmpeg","type":"release","version":"(\d+(?:\.\d+)*)"/)
  end

  conflicts_with formula: "ffmpeg"

  binary "ffmpeg"
end
