cask "ffmpeg" do
  version "4.4.1"
  sha256 "d7f3ea44b6086834fac4198f2f0a82f93ac9fba587d94f6b086b16ed228fcdb3"

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
