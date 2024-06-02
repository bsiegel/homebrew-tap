cask "yt-dlp" do
  version "2024.05.27"
  sha256 "b67769b0d68dbdc59a6d217713a37443b5a12c1d377c27c9946da8a537b995bb"

  url "https://github.com/yt-dlp/yt-dlp/releases/download/#{version}/yt-dlp"
  name "yt-dlp"
  desc "Feature-rich command-line audio/video downloader"
  homepage "https://github.com/yt-dlp/yt-dlp"

  binary "yt-dlp"
end
