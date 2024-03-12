cask "ffmpeg" do
  arch arm: "arm",
     intel: "intel"

  on_arm do
    version "6.1.1"
    sha256 "1c69a9a4a5d0172d9aec611f19d282b38b3c3d69832621ecef87926335f62e0a"
  end
  on_intel do
    version "6.1"
    sha256 "9a7de6ea24052166340c50e00dd493da49315431e6bfde5ed2a600eab9f27b65"
  end

  url_version = [
    version.major.to_i,
    ((version.minor.to_i || 0) if (version.minor.to_i || 0) > 0 || (version.patch.to_i || 0) > 0),
    ((version.patch.to_i || 0) if (version.patch.to_i || 0) > 0)
  ].compact.join("")

  url "https://www.osxexperts.net/ffmpeg#{url_version}#{arch}.zip"
  name "FFmpeg"
  desc "Play, record, convert, and stream audio and video"
  homepage "https://www.osxexperts.net/"

  conflicts_with formula: "ffmpeg"

  binary "ffmpeg"

  livecheck do
    url "https://www.osxexperts.net/"
    regex(/Download ffmpeg (\d+(?:\.\d+)+)/i)
  end
end
