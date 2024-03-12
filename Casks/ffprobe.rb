cask "ffprobe" do
  arch arm: "arm",
     intel: "intel"

  on_arm do
    version "6.1.1"
    sha256 "8ec78ce09c0b474ae7583908c8d79d801f754d8273dca3d5a5de51f307517fc7"
  end
  on_intel do
    version "6.1"
    sha256 "977381d8cec9c477fef4cdbb259addc7e5506e47fa61087e620d5ed01a7c7a51"
  end

  url_version = [
    version.major.to_i,
    ((version.minor.to_i || 0) if (version.minor.to_i || 0) > 0 || (version.patch.to_i || 0) > 0),
    ((version.patch.to_i || 0) if (version.patch.to_i || 0) > 0)
  ].compact.join("")

  url "https://www.osxexperts.net/ffprobe#{url_version}#{arch}.zip"
  name "FFmpeg"
  desc "Play, record, convert, and stream audio and video"
  homepage "https://www.osxexperts.net/"

  conflicts_with formula: "ffmpeg"

  binary "ffprobe"

  livecheck do
    url "https://www.osxexperts.net/"
    regex(/Download ffprobe (\d+(?:\.\d+)+)/i)
  end
end
