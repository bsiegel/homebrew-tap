cask "yt-dlp" do
  version "2024.04.09"
  sha256 "7f12092fb95ffa2c8947c855298c94c612c9c0e969e132d7eca5502981955c99"

  url "https://github.com/yt-dlp/yt-dlp/releases/download/#{version}/yt-dlp"
  name "yt-dlp"
  desc "Feature-rich command-line audio/video downloader"
  homepage "https://github.com/yt-dlp/yt-dlp"

  binary "yt-dlp"
end
