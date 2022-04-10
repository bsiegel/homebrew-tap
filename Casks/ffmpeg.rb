cask "ffmpeg" do
  version "5.0.1"
  sha256 "6ba850f5d7a8ff1c33c7df99a1ec37687bf33b7b7c8135918ce994fc82f9c46c"

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
