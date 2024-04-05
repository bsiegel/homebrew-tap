cask "ffplay" do
  arch arm:   "arm",
       intel: "intel"

  on_arm do
    version "7.0"
    sha256 "b3803b97afd30028aa5bba1cf88fbb3cde935224f317c2aa8879af77aba2eee1"
  end
  on_intel do
    version "7.0"
    sha256 "d018dd609980b62fd4e5e60c0f8e8853681fb3e6971c6dd25150088b57cd3a37"
  end

  url_version = [
    version.major.to_i,
    (version.minor.to_i || 0 if (version.minor.to_i || 0).positive? || (version.patch.to_i || 0).positive?),
    (version.patch.to_i || 0 if (version.patch.to_i || 0).positive?),
  ].compact.join

  url "https://www.osxexperts.net/ffplay#{url_version}#{arch}.zip"
  name "FFmpeg"
  desc "Play, record, convert, and stream audio and video"
  homepage "https://www.osxexperts.net/"

  livecheck do
    url "https://www.osxexperts.net/"
    regex(/Download ffplay (\d+(?:\.\d+)+)/i)
  end

  conflicts_with formula: "ffmpeg"

  binary "ffplay"
end
