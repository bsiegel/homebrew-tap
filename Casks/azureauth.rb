cask "azureauth" do
  arch arm: "arm64", intel: "x64"

  version "0.8.5"
  sha256 arm:   "e277fb7c84b6744c3b015eff3c081394e45b79063583c1f258d6874c008fc5e3",
         intel: "e53682f6190d8a78df35931b509db552d51ed2d1c8c5495737c949c1b0c2d5f6"

  url "https://github.com/AzureAD/microsoft-authentication-cli/releases/download/#{version}/azureauth-#{version}-osx-#{arch}.tar.gz"
  name "azureauth"
  desc "CLI wrapper for performing AAD Authentication"
  homepage "https://github.com/AzureAD/microsoft-authentication-cli"

  binary "azureauth"
end
