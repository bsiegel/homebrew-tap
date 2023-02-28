cask "ffprobe" do
  arch arm: "arm",
     intel: "intel"

  version "6.0"

  sha256 arm: "582842ca7e76197ae8f4299b7f5f2d257b42168f314fc37a675708b9d5f847e0",
       intel: "4771ff3c968d2796d9cac2593a9d6f737a3435a78dafc12e2a6e3f70ee9b0cd4"

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
