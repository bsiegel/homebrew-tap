cask "ffprobe" do
  version "4.4"
  sha256 "f574171f90686747ef12504fb4f8629ce3f9493c13727f928d594d7ac0d66169"

  url "https://evermeet.cx/ffmpeg/ffprobe-#{version}.zip"
  name "FFprobe"
  desc "Play, record, convert, and stream audio and video"
  homepage "https://evermeet.cx/ffmpeg/"

  conflicts_with formula: "ffmpeg"

  binary "ffprobe"

  livecheck do
    url "https://evermeet.cx/ffmpeg/info/ffprobe/release"
    regex(%r[\A{"name":"ffprobe","type":"release","version":"(\d+(?:\.\d+)*)"])
  end
end
