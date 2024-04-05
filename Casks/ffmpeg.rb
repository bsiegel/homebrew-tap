cask "ffmpeg" do
  arch arm:   "arm",
       intel: "intel"

  on_arm do
    version "7.0"
    sha256 "d2cd3145597a36ec17cb55273f1b7c2ce80def3b67e915293e649cd66281160c"
  end
  on_intel do
    version "7.0"
    sha256 "2d01a9bb00c3d0d4a850baa12a9414af197c1199315443bce44064ffb8e4297a"
  end

  url_version = [
    version.major.to_i,
    (version.minor.to_i || 0 if (version.minor.to_i || 0).positive? || (version.patch.to_i || 0).positive?),
    (version.patch.to_i || 0 if (version.patch.to_i || 0).positive?),
  ].compact.join

  url "https://www.osxexperts.net/ffmpeg#{url_version}#{arch}.zip"
  name "FFmpeg"
  desc "Play, record, convert, and stream audio and video"
  homepage "https://www.osxexperts.net/"

  livecheck do
    url "https://www.osxexperts.net/"
    regex(/Download ffmpeg (\d+(?:\.\d+)+)/i)
  end

  conflicts_with formula: "ffmpeg"

  binary "ffmpeg"
end
