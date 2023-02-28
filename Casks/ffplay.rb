cask "ffplay" do
  arch arm: "arm",
     intel: "intel"

  version "6.0"

  sha256 arm: "bd8487c83b58b00957d7b4d6e51abb80c5354ad272732fdd9cef4ee554723555",
       intel: "2740f58d73ff77a248109788bd99371e4d797eb98eff1948fe185f2e99aa580d"

  url_version = [
    version.major.to_i,
    ((version.minor.to_i || 0) if (version.minor.to_i || 0) > 0 || (version.patch.to_i || 0) > 0),
    ((version.patch.to_i || 0) if (version.patch.to_i || 0) > 0)
  ].compact.join("")

  url "https://www.osxexperts.net/ffplay#{url_version}#{arch}.zip"
  name "FFmpeg"
  desc "Play, record, convert, and stream audio and video"
  homepage "https://www.osxexperts.net/"

  conflicts_with formula: "ffmpeg"

  binary "ffplay"

  livecheck do
    url "https://www.osxexperts.net/"
    regex(/Download ffplay (\d+(?:\.\d+)+)/i)
  end
end
