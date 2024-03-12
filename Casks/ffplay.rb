cask "ffplay" do
  arch arm: "arm",
     intel: "intel"

  on_arm do
    version "6.1.1"
    sha256 "863136f1e1c1e3065851ffb37f0d8480959f955ff08adc179ff8b306cf9a8b26"
  end
  on_intel do
    version "6.1"
    sha256 "ce4829530ccca6d8472bb1aa97af04e3f7a494bc815b303a404256d0190ab8e4"
  end

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
