cask "ffplay" do
  version "6.0"
  sha256 "ca1049a493640394b197c5f7c94338bd24b9efb11ce1e3ced329deb07ac2af93"

  url "https://evermeet.cx/ffmpeg/ffplay-#{version}.zip"
  name "FFplay"
  desc "Play, record, convert, and stream audio and video"
  homepage "https://evermeet.cx/ffmpeg/"

  livecheck do
    url "https://evermeet.cx/ffmpeg/info/ffplay/release"
    regex(/\A{"name":"ffplay","type":"release","version":"(\d+(?:\.\d+)*)"/)
  end

  conflicts_with formula: "ffmpeg"

  binary "ffplay"
end
