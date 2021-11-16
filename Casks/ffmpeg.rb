cask "ffmpeg" do
  version "4.4"
  sha256 "ee7fa287e35bb964fd7a1dfacc388b96cf376f090d4cbbb9d75d707e313b9e98"

  url "https://evermeet.cx/ffmpeg/ffmpeg-#{version}.zip"
  name "FFmpeg"
  desc "Play, record, convert, and stream audio and video"
  homepage "https://evermeet.cx/ffmpeg/"

  conflicts_with formula: "ffmpeg"

  binary "ffmpeg"

  livecheck do
    url "https://evermeet.cx/ffmpeg/info/ffmpeg/release"
    regex(%r[\A{"name":"ffmpeg","type":"release","version":"(\d+(?:\.\d+)*)"])
  end
end
