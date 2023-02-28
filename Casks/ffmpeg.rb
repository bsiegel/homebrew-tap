cask "ffmpeg" do
  version "6.0"
  sha256 "9a810d222862a7230fd7035c91e32beb605af7501c3517580f2bc1eb8faddacc"

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
