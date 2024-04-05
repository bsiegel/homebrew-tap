cask "ffprobe" do
  arch arm:   "arm",
       intel: "intel"

  on_arm do
    version "7.0"
    sha256 "bf0cccdda082ad7ed0d04cc6767014bce86f0a83bcd4a7b85137667ed0bcee0e"
  end
  on_intel do
    version "7.0"
    sha256 "e14a2feb619ee21cb96ac3bf8c34a5d57f2ea61c38fe9d89b1a084d619b6aebf"
  end

  url_version = [
    version.major.to_i,
    (version.minor.to_i || 0 if (version.minor.to_i || 0).positive? || (version.patch.to_i || 0).positive?),
    (version.patch.to_i || 0 if (version.patch.to_i || 0).positive?),
  ].compact.join

  url "https://www.osxexperts.net/ffprobe#{url_version}#{arch}.zip"
  name "FFmpeg"
  desc "Play, record, convert, and stream audio and video"
  homepage "https://www.osxexperts.net/"

  livecheck do
    url "https://www.osxexperts.net/"
    regex(/Download ffprobe (\d+(?:\.\d+)+)/i)
  end

  conflicts_with formula: "ffmpeg"

  binary "ffprobe"
end
